class Asteroid extends Floater {
	private int rotSpeed;
	private int dilation;
	private int ranColor;

	public Asteroid (int ranColor) {
		dilation = (int)(Math.random()*2)+2;
		rotSpeed = (int)(Math.random()*3)-1;
		ranColor = (int)(Math.random()*5);

    	xCorners = new int[] {
    		(int)(Math.random()*6)-6*dilation, 
    		(int)(Math.random()*3)-9*dilation, 
    		(int)(Math.random()*9)-13*dilation, 
    		(int)(Math.random()*3)-17*dilation, 
    		(int)(Math.random()*8)-14*dilation, 
    		(int)(Math.random()*13)-6*dilation, 
    		(int)(Math.random()*3)+5*dilation, 
    		(int)(Math.random()*7)+10*dilation, 
    		(int)(Math.random()*6)+11*dilation,
    		(int)(Math.random()*11)*dilation
    	};
    	yCorners = new int[] {
    		(int)(Math.random()*2)+12*dilation, 
    		(int)(Math.random()*3)+9*dilation, 
    		(int)(Math.random()*9)*dilation, 
    		(int)(Math.random()*9)-9*dilation, 
    		(int)(Math.random()*4)-13*dilation, 
    		(int)(Math.random()*2)-14*dilation, 
    		(int)(Math.random()*6)-13*dilation, 
    		(int)(Math.random()*8)-13*dilation, 
    		(int)(Math.random()*8)+2*dilation,
    		(int)(Math.random()*5)+9*dilation
    	};

    	if (ranColor == 0) {
    		mColor = #6c727d;
    	} else if (ranColor == 1) {
    		mColor = #717781;
    	} else if (ranColor == 2) {
    		mColor = #767c86;
    	} else if (ranColor == 3) {
    		mColor = #7b818b;
    	} else {
    		mColor = #808690;
    	}

    	corners = xCorners.length;
    	mCenterX = (int)(Math.random()*width);
    	mCenterY = (int)(Math.random()*height);
    	mDirectionX = (Math.random()*3)-1;
    	mDirectionY = (Math.random()*3)-1;
    	mPointDirection = (int)(Math.random()*360);

	}

	public int getDilation() {
		return dilation;
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