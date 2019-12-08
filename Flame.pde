class Flame extends Floater {
	public Flame(color newColor) {
		corners = 4;
    	xCorners = new int[] {-20, -23, -30, -23};
    	yCorners = new int[] {0, 4, 0, -4};
    	mColor = newColor;
    	mCenterX = width/2;
    	mCenterY = height/2;
    	mDirectionX = 0;
    	mDirectionY = 0;
    	mPointDirection = 0;
	}

    public void setPointDirection(double newPointDirection) { 
        mPointDirection = newPointDirection; 
    }
    public void setDirectionX(double newDirectionX) { 
        mDirectionX = newDirectionX; 
    }
    public void setDirectionY(double newDirectionY) { 
        mDirectionY = newDirectionY; 
    }
    public void setCenterX(double newCenterX) { 
        mCenterX = newCenterX; 
    }
    public void setCenterY(double newCenterY) { 
        mCenterY = newCenterY; 
    }

    public double getDirectionX() { 
        return mDirectionX; 
    }
    public double getDirectionY() { 
        return mDirectionY; 
    }
    public double getCenterX() { 
        return mDirectionX; 
    }
    public double getCenterY() { 
        return mDirectionY; 
    }
    public double getPointDirection() {
        return mPointDirection;
    }

}