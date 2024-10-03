class Asteroid {
  //Variable instances
  private float xPos;
  private float yPos;
  private int diaH;
  private int diaW;
  private int speedX = 5;

  //Constructor with parameters
  Asteroid (float xPos, float yPos, int diaH, int diaW) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.diaH = diaH;
    this.diaW = diaW;
  }

  void displayAsteroid() {
    xPos = xPos - speedX;
    fill(175);
    ellipse(xPos, yPos, diaH, diaW);
  }

  //Method that moves the asteroid object and resets its position if it goes "off screen"
  void moveAsteroid() {
    xPos = xPos - speedX;
    displayAsteroid();

   //If statement that checks if the asteroid has gone "off screen" and if true resets it
    if (xPos < 0) {
      xPos = width;
      yPos = random(height);
      speedX = speedX + 1;
    }
  }

  //Method that return a boolean value depending on wether mouseX and mouseY is within the asteroid
  //So it is actually not the spaceship that is hit but the mouse-cursor, therefore the hitbox is a bit forgiving
  boolean crashCheck () {
    if (mouseX > xPos && mouseX < xPos + diaW + 10 && mouseY > yPos && mouseY < yPos + diaH + 10) {
      return true;
    } else
      return false;
  }
}
