class Bullet extends Floater {
	public Bullet (Spaceship theShip) {
		mCenterX = theShip.mCenterX;
		mCenterY = theShip.mCenterY;
		double dRadians = mPointDirection * (Math.PI/180);
		mPointDirection = theShip.mPointDirection;
		mDirectionX = 5 * Math.cos(dRadians) + theShip.mDirectionX;
		mDirectionY = 5 * Math.sin(dRadians) + theShip.mDirectionY;
		mColor = #ff2200;
	}
	public void show () {
		fill (#ff2200);
		noStroke();
		ellipse((float) mCenterX, (float) mCenterY, 5, 5);
	}
	public void move(){
		mCenterX += mDirectionX;    
    	mCenterY += mDirectionY;       
	}
}