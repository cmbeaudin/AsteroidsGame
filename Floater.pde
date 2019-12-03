class Floater //Do NOT modify the Floater class! Make changes in the Spaceship class 
{   
  protected int corners;  //the number of corners, a triangular floater has 3   
  protected int[] xCorners;   
  protected int[] yCorners;   
  protected int mColor;  
  protected double mCenterX, mCenterY; //holds center coordinates   
  protected double mDirectionX, mDirectionY; //holds x and y coordinates of the vector for direction of travel   
  protected double mPointDirection; //holds current direction the ship is pointing in degrees    

  //Accelerates the floater in the direction it is pointing (mPointDirection)   
  public void accelerate (double dAmount) {          
    //convert the current direction the floater is pointing to radians    
    double dRadians = mPointDirection*(Math.PI/180);     
    //change coordinates of direction of travel    
    mDirectionX += ((dAmount) * Math.cos(dRadians));    
    mDirectionY += ((dAmount) * Math.sin(dRadians));       
  }   
  public void turn (int nDegreesOfRotation) {     
    //rotates the floater by a given number of degrees    
    mPointDirection+=nDegreesOfRotation;   
  }
  //move the floater in the current direction of travel   
  public void move () {      
    //change the x and y coordinates by mDirectionX and mDirectionY       
    mCenterX += mDirectionX;    
    mCenterY += mDirectionY;     

    //wrap around screen    
    if(mCenterX >width) {     
      mCenterX = 0;    
    } else if (mCenterX<0) {     
      mCenterX = width;    
    }    
    if(mCenterY >height) {    
      mCenterY = 0;    
    } else if (mCenterY < 0) {     
      mCenterY = height;    
    }   
  }
  //Draws the floater at the current position   
  public void show () {             
    fill(mColor);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)mCenterX, (float)mCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(mPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)mCenterX, -1*(float)mCenterY);
  }   
} 
