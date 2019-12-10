Spaceship ship;
Flame fire;
Flame rocket;
Star[] starlings;
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> bullets; 
boolean dPressed;
boolean aPressed;
boolean wPressed;
boolean sPressed;

public void setup() {
	size(750, 750);
	frameRate(-1);
	noStroke();

 	ship = new Spaceship();
 	fire = new Flame(#ff2600);
 	rocket = new Flame(#1567eb);
 	starlings = new Star[2500];
 	asteroids = new ArrayList <Asteroid>();
 	bullets = new ArrayList <Bullet>();

 	for (int i = 0; i < starlings.length; i++) {
 		starlings[i] = new Star();
 	}
 
 	for (int i = 0; i < 10; i++){
 		asteroids.add(i, new Asteroid((int)(Math.random()*5)));
 	}

}

public void draw() {
	background(#080a10);

  for (int i = 0; i < starlings.length; i++) {
  	starlings[i].show();
  }
  for (int i = 0; i < asteroids.size(); i++) {
  	asteroids.get(i).show();
  	asteroids.get(i).move();
  }
  for (int i = bullets.size() - 1; i >= 0; i--) {
  	bullets.get(i).move();
  	bullets.get(i).show();
  }

  if (dPressed == true) {
  	ship.turn(7);
  	fire.turn(7);
  	rocket.turn(7);
  }
  if (aPressed == true) {
  	ship.turn(-7);
  	fire.turn(-7);
  	rocket.turn(-7);
  }
  if (wPressed == true) {
  	fire.show();
  	ship.accelerate(0.3);
  	fire.accelerate(0.3);
  	rocket.accelerate(0.3);
  }
  if (sPressed == true) {
  	rocket.show();
  	ship.accelerate(-0.3);
  	fire.accelerate(-0.3);
  	rocket.accelerate(-0.3);
  }
  if (wPressed == false && sPressed == false) {
  	ship.setDirectionX(0.98*ship.getDirectionX());
  	ship.setDirectionY(0.98*ship.getDirectionY());
  	fire.setDirectionX(0.98*fire.getDirectionX());
  	fire.setDirectionY(0.98*fire.getDirectionY());
  	rocket.setDirectionX(0.98*rocket.getDirectionX());
  	rocket.setDirectionY(0.98*rocket.getDirectionY());
  }
  
  ship.show();
  ship.move();
  fire.move();
  rocket.move();

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
    rocket.setDirectionX(0);
    rocket.setDirectionY(0);    
    rocket.setPointDirection(ranPointDirection);
    rocket.setCenterX(ranSetX);
    rocket.setCenterY(ranSetY);
  }
  if (key == ' ') {
    bullets.add(new Bullet(ship));
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
