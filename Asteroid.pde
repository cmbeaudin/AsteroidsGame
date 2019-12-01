class Asteroid extends Floater {
	private int rotSpeed;
	private int dilation;
	public Asteroid() {
		dilation = 5;
		rotSpeed = (int)(Math.random()*20)-10;
		corners = 8;
    	xCorners = new int[] {12*dilation, 11*dilation, 5*dilation, -12*dilation, -11*dilation, -13*dilation, 1*dilation, 5*dilation};
    	yCorners = new int[] {-1*dilation, 4*dilation, 6*dilation, 2*dilation, -1*dilation, -6*dilation, -5*dilation, -3*dilation};
    	myColor = #767c87;
    	myCenterX = (int)(Math.random()*width);
    	myCenterY = (int)(Math.random()*height);
    	myDirectionX = (Math.random()*3)-1;
    	myDirectionY = (Math.random()*3)-1;
    	myPointDirection = (int)(Math.random()*360);
	}
	public void move() {
		turn(rotSpeed);
		super.move();
	}
}