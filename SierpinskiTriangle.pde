public void setup()
{
	size(800,800);
}
public void draw()
{
	background(0, 0, 255);
	//sierpinski(50,50,300);
}

public void mouseMoved()//optional
{
   sierpinski(50,50,mouseX);
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
    fill(random(256),random(256),random(256));
		triangle(x, y, x+len/2, y+len, (x+len), y);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y+len/2,len/2);

	}
}