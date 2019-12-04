Spaceship ship;
Flame fire;
Star[] starlings;
ArrayList <Asteroid> asteroids;
boolean dPressed;
boolean aPressed;
boolean wPressed;
boolean sPressed;
boolean qPressed;

public void setup() {
	size(750, 750);
	frameRate(-1);
	noStroke();

 	ship = new Spaceship();
 	fire = new Flame();
 	starlings = new Star[7500];
 	asteroids = new ArrayList <Asteroid>();

 	for (int i = 0; i < starlings.length; i++) {
 		starlings[i] = new Star();
 	}

 	for (int i = 0; i < 10; i++){
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
  		asteroids.get(i).setColor((int)(Math.random()*5));
  	}

  	ship.show();
  	if (dPressed == true) {
  		ship.turn(7);
  		fire.turn(7);
  	}
  	if (aPressed == true) {
  		ship.turn(-7);
  		fire.turn(-7);
  	}
  	if (wPressed == true) {
  		fire.show();
  		ship.accelerate(0.5);
  		fire.accelerate(0.5);
  	}
  	if (sPressed == true) {
  		ship.accelerate(-0.5);
  		fire.accelerate(-0.5);
  	}
  	if (qPressed == true) {
  		int ranPointDirection = (int)(Math.random()*360);
      	int ranSetX = (int)(Math.random()*width);
      	int ranSetY = (int)(Math.random()*height);     
      	ship.setDirectionX(0);
      	ship.setDirectionY(0);    
      	ship.setPointDirection(ranPointDirection);
      	ship.setCenterX(ranSetX);
      	ship.setCenterY(ranSetY);
      	fire.setDirectionX(0);
      	fire.setDirectionY(0);    
      	fire.setPointDirection(ranPointDirection);
      	fire.setCenterX(ranSetX);
      	fire.setCenterY(ranSetY);
  	}
  	if (wPressed == false && sPressed == false) {
  		ship.setDirectionX(0.95*ship.getDirectionX());
  		ship.setDirectionY(0.95*ship.getDirectionY());
  		fire.setDirectionX(0.95*fire.getDirectionX());
  		fire.setDirectionY(0.95*fire.getDirectionY());
  	}
  	
  	
  	ship.move();
  	fire.move();

}

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
		qPressed = true;
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
	if (key == 'q') {
		qPressed = false;
	}
}
