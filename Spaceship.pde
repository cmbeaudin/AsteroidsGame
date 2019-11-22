class Spaceship extends Floater  
{   
    public Spaceship(){
    	corners = 15;
    	xCorners = new int[corners];
    	xCorners[0] = 23; xCorners[1] = 19; xCorners[2] = -7; xCorners[3] = -10; xCorners[4] = -18; xCorners[5] = -18; xCorners[6] = -23; xCorners[7] = -18; xCorners[8] = -18; xCorners[9] = -23; xCorners[10] = -18; xCorners[11] = -18; xCorners[12] = -10; xCorners[13] = -7; xCorners[14] = 19;
    	yCorners = new int[corners];
    	yCorners[0] = 0; yCorners[1] = 5; yCorners[2] = 8; yCorners[3] = 13; yCorners[4] = 16; yCorners[5] = 6; yCorners[6] = 6; yCorners[7] = 1; yCorners[8] = -1; yCorners[9] = -6; yCorners[10] = -6; yCorners[11] = -16; yCorners[12] = -13; yCorners[13] = -8; yCorners[14] = -5;
    	myColor = 128;
    	myCenterX = width/2;
    	myCenterY = height/2;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
} 
