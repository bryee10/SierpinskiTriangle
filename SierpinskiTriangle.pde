public void setup()
{
	background(0, 0, 255);
	size(400,400);
	sierpinski(200,200,500);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x, y, len, y, len/2, len);
	}
	else
	{
		sierpinski(x,y,len/2);
	}
}