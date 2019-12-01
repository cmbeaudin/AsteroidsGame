class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 15;
    	xCorners = new int[] {23, 19, -7, -10, -18, -18, -23, -18, -18, -23, -18, -18, -10, -7, 19};
    	yCorners = new int[] {0, 5, 8, 13, 16, 6, 6, 1, -1, -6, -6, -16, -13, -8, -5};
    	myColor = #e6ecf5;
    	myCenterX = width/2;
    	myCenterY = height/2;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    }
    public void setRandomX() { myCenterX = (int)(Math.random()*width); }
    public void setRandomY() { myCenterY = (int)(Math.random()*height); }
    public void setRandomDirectionPoint() { myPointDirection = (int)(Math.random()*360); }
    public void setDirectionX(double newDirectionX) { myDirectionX = newDirectionX; }
    public void setDirectionY(double newDirectionY) { myDirectionY = newDirectionY; }
    public double getDirectionX() { return myDirectionX; }
    public double getDirectionY() { return myDirectionY; }
} 

