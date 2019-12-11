class Spaceship extends Floater  
{   
    public Spaceship() {
    	corners = 14;
    	xCorners = new int[] {23, 19, -7, -10, -18, -18, -23, -18, -23, -18, -18, -10, -7, 19};
    	yCorners = new int[] {0, 5, 8, 13, 16, 6, 6, 0, -6, -6, -16, -13, -8, -5};
    	mColor = #d0dadb;
    	mCenterX = width/2;
    	mCenterY = height/2;
    	mDirectionX = 0;
    	mDirectionY = 0;
    	mPointDirection = 0;
    }

    public void setCenterX(int newCenterX) { 
        mCenterX = newCenterX; 
    }
    public void setCenterY(int newCenterY) { 
        mCenterY = newCenterY; 
    }
    public void setPointDirection(int newPointDirection) { 
        mPointDirection = newPointDirection; 
    }
    public void setDirectionX(double newDirectionX) { 
        mDirectionX = newDirectionX; 
    }
    public void setDirectionY(double newDirectionY) { 
        mDirectionY = newDirectionY; 
    }

    public double getDirectionX() { 
        return mDirectionX; 
    }
    public double getDirectionY() { 
        return mDirectionY; 
    }
    public double getCenterX() { 
        return mCenterX; 
    }
    public double getCenterY() { 
        return mCenterY; 
    }
    public double getPointDirection() {
        return mPointDirection;
    }
} 

