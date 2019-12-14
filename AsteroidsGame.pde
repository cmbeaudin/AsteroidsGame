Spaceship ship;
Flame fire;
Flame rocket;
Star[] starlings;
ArrayList <Asteroid> asteroids;
ArrayList <Bullet> bullets; 
boolean dPressed, aPressed, wPressed, sPressed;
boolean gameStatus;
boolean winLose;
int shipHealth;

public void setup() {
	size(750, 750);
	frameRate(-1);
	noStroke();

  gameStatus = true;
  shipHealth = 450;
 	ship = new Spaceship();
 	fire = new Flame(#ff2600);
 	rocket = new Flame(#1567eb);
 	starlings = new Star[2500];
 	asteroids = new ArrayList <Asteroid>();
 	bullets = new ArrayList <Bullet>();

 	for (int i = 0; i < starlings.length; i++) {
 		starlings[i] = new Star();
 	}
 
 	for (int i = 0; i < 10; i++) {
 		asteroids.add(i, new Asteroid((int)(Math.random()*5)));
 	}

}

public void draw() {
	background(#080a10);

  for (int i = 0; i < starlings.length; i++) {
  	starlings[i].show();
  }
  for (int i = bullets.size() - 1; i >= 0; i--) {
    bullets.get(i).move();
    bullets.get(i).show();
  }
  for (int i = 0; i < asteroids.size(); i++) {
  	asteroids.get(i).show();
  	asteroids.get(i).move();
  }

  if (gameStatus == true) {
    ArrayList <Integer> asteroidsRemove = new ArrayList <Integer>();
    ArrayList <Integer> bulletsRemove = new ArrayList <Integer>();
    for (int i = asteroids.size() - 1; i >= 0; i--) {
      for (int j = bullets.size() - 1; j >= 0; j--) {
        if (dist((float)(bullets.get(j).getCenterX()), (float)(bullets.get(j).getCenterY()), (float)(asteroids.get(i).getCenterX()), (float)(asteroids.get(i).getCenterY())) < 10*asteroids.get(i).getDilation()) {
          bulletsRemove.add(j);
          asteroidsRemove.add(i);
        } 
        if (dist((float)(ship.getCenterX()), (float)(ship.getCenterY()), (float)(asteroids.get(i).getCenterX()), (float)(asteroids.get(i).getCenterY())) < 10*asteroids.get(i).getDilation()) {
          shipHealth--; 
          System.out.println(shipHealth);
        }
      }
    }

    for (int i : asteroidsRemove) {
      asteroids.remove(i);
    }
    for (int j : bulletsRemove) {
      bullets.remove(j);
    }

    if (asteroids.size() == 0) {
      winLose = true;
    }

  } else {
      if (winLose == true) {

      }
  }

  if (dPressed == true) {
  	ship.turn(5);
  	fire.turn(5);
  	rocket.turn(5);
  }
  if (aPressed == true) {
  	ship.turn(-5);
  	fire.turn(-5);
  	rocket.turn(-5);
  }
  if (wPressed == true) {
  	fire.show();
  	ship.accelerate(0.1);
  	fire.accelerate(0.1);
  	rocket.accelerate(0.1);
  }
  if (sPressed == true) {
  	rocket.show();
  	ship.accelerate(-0.1);
  	fire.accelerate(-0.1);
  	rocket.accelerate(-0.1);
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