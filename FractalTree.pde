private double fractionLength = .8; 
private int smallestBranch = 5; 
private double branchAngle = .7;  


private int x1 = 320;
private int y1 = 480;
private int x2 = 320;
private int y2 = 380;


public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(320,380, 70,3*Math.PI/2);  //will add later 

}

public void drawBranches(int x,int y, double branchLength, double angle) 
{  	stroke(0,255,0); 
	strokeWeight(2);  
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle) + x);
	int endY1 =  (int)(branchLength*Math.sin(angle) + y);


	int endX2 = (int)(branchLength*Math.cos(angle) + x);


	if(branchLength>=smallestBranch)  
	{
		line(x,y,endX1,endY1);
		line(x,y,endX2,endY1);
		fill(225,0,0);
		ellipse(endX1,endY1,5,5);
		ellipse(endX2,endY1, 5,5);
	

		drawBranches( endX1, endY1 , branchLength*fractionLength , angle1);
		drawBranches( endX2, endY1 , branchLength*fractionLength , angle2);
		
	}

} 

