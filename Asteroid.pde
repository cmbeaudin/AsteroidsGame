class Asteroid extends Floater {
	private int rotSpeed;
	private int dilation;
	private int mHeight;
	private int mLength;
	public Asteroid() {
		dilation = 5;
		corners = 8;
		mHeight = (int)(Math.random()*14);
		mLength = (int)(Math.random()*17);
		rotSpeed = (int)(Math.random()*20)-10;
    	xCorners = new int[] {12*dilation, 11*dilation, 5*dilation, -12*dilation, -11*dilation, -13*dilation, 1*dilation, 5*dilation};
    	yCorners = new int[] {-1*dilation, 4*dilation, 6*dilation, 2*dilation, -1*dilation, -6*dilation, -5*dilation, -3*dilation};
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