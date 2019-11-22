Spaceship ship;
Star[] starlings;
public void setup() 
{
	size(500, 500);
 	ship = new Spaceship();
 	starlings = new Star[1000];
 	for(int i = 0; i < starlings.length; i++){
 		starlings[i] = new Star();
 	}
}
public void draw() 
{
	frameRate(60);
	noStroke();
	background(0);
  	for(int i = 0; i < starlings.length; i++){
  		starlings[i].show();
  	}
  	stroke(255);
  	ship.show();
  	ship.move();
}
public void keyPressed(){
	if(key == 'w'){
		ship.accelerate(.5);
	}
	if(key == 'a'){
		ship.turn(-10);
	}
	if(key == 'd'){
		ship.turn(10);
	}
	if(key == 's'){
		ship.accelerate(-.1);
	}
}