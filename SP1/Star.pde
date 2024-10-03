class Star {
  //Variable instances
  private float xPos;
  private float yPos;
  private float starDiameter;

  //Constructor with parameters
  Star (float xPos, float yPos, float starDiameter) {
    this.xPos = xPos;
    this.yPos = yPos;
    this.starDiameter = starDiameter;
  }

  //Method that displays the stars
  void displayStar() {
    fill(255);
    circle(xPos, yPos, starDiameter);
  }
}
