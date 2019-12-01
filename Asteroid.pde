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
        myStrokeColor = #767c87;
    	myCenterX = width/2;
    	myCenterY = height/2;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
	}
	public void move() {
		myPointDirection += rotSpeed;
	}
}