class Spaceship {
  String name;

  //Constructor with parameter
  Spaceship(String name) {
    this.name = name;
  }

  void displaySpaceship() {
    //Body of the spaceship
    fill(50);
    rectMode(CENTER);
    rect(mouseX, mouseY, 100, 50);

    //Upper wing of spaceship
    fill(255, 0, 0);
    triangle(mouseX, mouseY - 25, mouseX + 50, mouseY - 25, mouseX, mouseY - 75);

    //Lower wing of spaceship
    fill(255, 0, 0);
    triangle(mouseX, mouseY + 25, mouseX + 50, mouseY + 25, mouseX, mouseY + 75);

    //Head of spaceship
    fill(50);
    triangle(mouseX + 50, mouseY - 25, mouseX + 50, mouseY + 25, mouseX + 100, mouseY);
  }


  void printSpaceshipInfo() {
    println("Hello, welcome to your ship: " + name + "\nEngines: 2 thruster engines" + "\nFuel: full");
  }
}
