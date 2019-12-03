class Asteroid extends Floater {
	private int rotSpeed;
	private int dilation;
	public Asteroid() {
		dilation = 3;
		rotSpeed = (int)(Math.random()*20)-10;

    	xCorners = new int[] {
    		(int)(Math.random()*6)-6*dilation, 
    		(int)(Math.random()*3)-9*dilation, 
    		(int)(Math.random()*9)-17*dilation, 
    		(int)(Math.random()*3)-17*dilation, 
    		(int)(Math.random()*8)-14*dilation, 
    		(int)(Math.random()*13)-6*dilation, 
    		(int)(Math.random()*3)+7*dilation, 
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
    		-14*dilation, 
    		-13*dilation, 
    		(int)(Math.random()*20)-13*dilation, 
    		(int)(Math.random()*2)+7*dilation,
    		(int)(Math.random()*5)+9*dilation
    	};

    	corners = xCorners.length;
    	mColor = #767c87;
    	mCenterX = (int)(Math.random()*width);
    	mCenterY = (int)(Math.random()*height);
    	mDirectionX = (Math.random()*3)-1;
    	mDirectionY = (Math.random()*3)-1;
    	mPointDirection = (int)(Math.random()*360);
	}
	public void move() {
		turn(rotSpeed);
		super.move();
	}
}