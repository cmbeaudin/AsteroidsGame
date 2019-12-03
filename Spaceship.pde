class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 14;
    	xCorners = new int[] {23, 19, -7, -10, -18, -18, -23, -18, -23, -18, -18, -10, -7, 19};
    	yCorners = new int[] {0, 5, 8, 13, 16, 6, 6, 0, -6, -6, -16, -13, -8, -5};
    	mColor = #e6ecf5;
    	mCenterX = width/2;
    	mCenterY = height/2;
    	mDirectionX = 0;
    	mDirectionY = 0;
    	mPointDirection = 0;
    }
    public void setRandomX() { mCenterX = (int)(Math.random()*width); }
    public void setRandomY() { mCenterY = (int)(Math.random()*height); }
    public void setRandomDirectionPoint() { mPointDirection = (int)(Math.random()*360); }
    public void setDirectionX(double newDirectionX) { mDirectionX = newDirectionX; }
    public void setDirectionY(double newDirectionY) { mDirectionY = newDirectionY; }
    public double getDirectionX() { return mDirectionX; }
    public double getDirectionY() { return mDirectionY; }
} 

