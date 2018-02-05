public void setup()
{
	size(700, 700);
}

int n = 20;

public void draw()
{
	background(205);
	sierpinski(0, 700, 700);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= n) {
		triangle(x, y, x + len/2, y - len/2,x + len, y);
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}