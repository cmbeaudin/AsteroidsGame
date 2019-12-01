Spaceship ship;
Star[] starlings;
ArrayList <Asteroid> asteroids;

public void setup() {
	size(750, 750);
	frameRate(-1);
	noStroke();

 	ship = new Spaceship();
 	starlings = new Star[10000];
 	asteroids = new ArrayList <Asteroid>();

 	for (int i = 0; i < starlings.length; i++) {
 		starlings[i] = new Star();
 	}

 	for (int i = 0; i < 20; i++){
 		asteroids.add(i, new Asteroid());
 	}

}
public void draw() {
	background(8, 16, 20);

  	for (int i = 0; i < starlings.length; i++) {
  		starlings[i].show();
  	}

  	for (int i = 0; i < asteroids.size(); i++) {
  		asteroids.get(i).show();
  		asteroids.get(i).move();
  	}

  	strokeWeight(2);
  	ship.show();
  	ship.move();

  	if (dPressed == true) {
  		ship.turn(7);
  	}
  	if (aPressed == true) {
  		ship.turn(-7);
  	}
  	if (wPressed == true) {
  		ship.accelerate(0.5);
  	}
  	if (sPressed == true) {
  		ship.accelerate(-0.5);
  	}
  	// if (wPressed == false && sPressed == false && (ship.getDirectionX() > 0 || ship.getDirectionY() > 0 || ship.getDirectionX() < 0 || ship.getDirectionY() < 0)) {
  	// 	if (ship.getDirectionX() > 0) {
  	// 		ship.accelerate(-0.5);
  	// 	} else if (ship.getDirectionX() < 0) {
  	// 		ship.accelerate(0.5);
  	// 	}
  	// 	if (ship.getDirectionY() > 0) {
  	// 		ship.accelerate(-0.5);
  	// 	} else if (ship.getDirectionY() < 0) {
  	// 		ship.accelerate(-0.5);
  	// 	}
  	// }
  	System.out.println(ship.getDirectionX());
}

boolean dPressed;
boolean aPressed;
boolean wPressed;
boolean sPressed;

public void keyPressed() {
	if (key == 'a') {
		aPressed = true;
	}
	if (key == 'd') {
		dPressed = true;
	}
	if (key == 'w') {
		wPressed = true;
	}
	if (key == 's') {
		sPressed = true;
	}
	if (key == 'q') {
		ship.setDirectionX(0);
		ship.setDirectionY(0);
		ship.setRandomX();
		ship.setRandomY();
		ship.setRandomDirectionPoint();
	}
}

public void keyReleased() {
	if (key == 'd') {
		dPressed = false;
	}
	if (key == 'a') {
		aPressed = false;
	}
	if (key == 'w') {
		wPressed = false;
	}
	if (key == 's') {
		sPressed = false;
	}
}
