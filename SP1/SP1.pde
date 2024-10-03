PImage spaceImage;  //Background image //<>//
int numberOfStars = 100;  //Variable where you can set the number of stars to be created
ArrayList <Star> starsArrayList = new ArrayList <Star> ();  //ArrayList that will store the Star objects
Spaceship spaceship = new Spaceship("The Falcon"); //Spaceship object is created
Asteroid asteroid1 = new Asteroid (1500, random(0, 800), 150, 100); //Asteroid object is created


void setup() {
  smooth();
  frameRate(60);
  size(1500, 800);
  //Imported image to use as background
  spaceImage = loadImage("spaceImage.jpeg");

  //Star objects are created and added to an ArrayList.
  //They are given a random size and random x and y positions within the width and height of the canvas-size
  for (int i = 0; i < numberOfStars; i++) {
    starsArrayList.add(new Star (random(width), random(height), random(5, 20)));
  }

  //Call on method to print info and chosen name of a Spaceship object
  spaceship.printSpaceshipInfo();
}


void draw() {
  //Display imported image as background, fitted to the width and height of the canvas-size
  image(spaceImage, 0, 0, width, height);

  //Using a for-each-loop to go thru the starsArrayList and call on the displayStar-method on each Star object
  for (Star k : starsArrayList) {
    k.displayStar();
  }

  //Spaceship is displayed
  spaceship.displaySpaceship();

  //Asteroid object is displayed
  asteroid1.displayAsteroid();

  //Asteroid object is set in motion
  asteroid1.moveAsteroid();


  //If statement that calls the chrasChek method on the asteroid1-object and if true executes the following code
  if (asteroid1.crashCheck()) {
    println("YOU CRASHED, YOU ARE DEAD!");
    println("Press 'space' to play again");
    noLoop();  //noLoop makes it so that the game stop if the user crashes
  }
}

//Pressing the space button restarts the game by creating a new spaceship-object and asteroid-object and 'restarts' the loop
void keyPressed() {
  if (key == ' ' || key == ' ') {
    loop();
    spaceship = new Spaceship("The Falcon");
    asteroid1 = new Asteroid(1500, random(0, 800), 150, 100);
  }
}
