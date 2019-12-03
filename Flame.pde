class Flame extends Floater {
	public Flame() {
		corners = 4;
    	xCorners = new int[] {-20, -23, -30, -23};
    	yCorners = new int[] {0, 4, 0, -4};
    	mColor = #ff2600;
    	mCenterX = width/2;
    	mCenterY = height/2;
    	mDirectionX = 0;
    	mDirectionY = 0;
    	mPointDirection = 0;
	}
}