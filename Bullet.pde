class Bullet extends Floater {
	public Bullet (Spaceship theShip) {
		mCenterX = theShip.getCenterX();
		mCenterY = theShip.getCenterY();
		mPointDirection = theShip.getPointDirection();
		double dRadians = mPointDirection * (Math.PI/180);
		mDirectionX = 5 * Math.cos(dRadians) + theShip.getDirectionX();
		mDirectionY = 5 * Math.sin(dRadians) + theShip.getDirectionY();
		mColor = #ff2600;
	}
	public void show () {
		ellipse(width/2, height/2, 5, 5);
	}
}