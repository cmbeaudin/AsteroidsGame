class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners = 5;
    	xCorners = new int[corners];
    	xCorners[0] = -40; xCorners[1] = 0; xCorners[2] = 30; xCorners[3] = 0; xCorners[4] = -40;
    	yCorners = new int[corners];
    	yCorners[0] = -10; yCorners[1] = 20; yCorners[2] = 0; yCorners[3] = -20; yCorners[4] = 10;
    	myColor = #f7cb47;
    	myCenterX = 250;
    	myCenterY = 250;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
} 
