public void setup()
{
	size(400,400);
}
public void draw()
{
	int z = 22;
	background(0, 0, 255);
	sierpinski(200,200,plus(z));
}
public int plus(int x)
{
	return x + 10;
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x, y, x+len/2, y+len, (x+len), y);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y+len/2,len/2);

	}
}