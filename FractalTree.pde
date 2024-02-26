private double fractionLength = .5; 
private int smallestBranch = 2; 
private double branchAngle = .1;  
public void setup() 
{   
  size(640, 480);    
  noLoop();
  strokeWeight(2);
} 
public void draw() 
{   
  background(0);   
  stroke((int)(Math.random()*200)+50,(int)(Math.random()*200)+50,(int)(Math.random()*200)+50);   
  line(320, 480, 320, 380);
  for(int i = 0; i<8;i++){
    drawBranches(320, 380, 150, 3*Math.PI/2);
    branchAngle += .2;
  }
  

} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1, angle2;
  int endX1, endY1, endX2, endY2, endX3, endY3;

  angle1 = angle + branchAngle;
  angle2 = angle - branchAngle;
  branchLength += fractionLength;
  endX1 = (int)(branchLength*Math.cos(angle1) + x);
  endY1 = (int)(branchLength*Math.sin(angle1) + y);
  endX2 = (int)(branchLength*Math.cos(angle2) + x);
  endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  ellipse(x,y,5,5);
  if (branchLength > smallestBranch) {
    drawBranches(endX1, endY1, branchLength/2, angle-6);
    stroke((int)(Math.random()*200)+50,(int)(Math.random()*200)+50,(int)(Math.random()*200)+50);  
    drawBranches(endX2, endY2, branchLength/2, angle+6);
    stroke((int)(Math.random()*200)+50,(int)(Math.random()*200)+50,(int)(Math.random()*200)+50); 
  } 
  
}
