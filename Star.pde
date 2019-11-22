class Star //note that this class does NOT extend Floater
{
	private float mX, mY, mSize, mOpacity;
	private color mColor;
 	public Star(){
 		mX = (float)(Math.random()*width);
 		mY = (float)(Math.random()*height);
 		mSize = (float)(Math.random()*4);
 		mOpacity = (float)(Math.random()*255);
 		mColor = color(255, 242, 173);
  	}
  	public void show(){
  		noStroke();
  		fill(mColor, mOpacity);
  		ellipse(mX, mY, mSize, mSize);
  	}
}
