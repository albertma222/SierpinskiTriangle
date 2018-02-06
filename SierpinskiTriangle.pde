int l = 500;
int s = 500;
int c = 0;

public void setup()
{
	background(0);
	size(500, 500);
}

public void draw()
{
	noStroke();
	sierpinski(0, 500, s);
}
public void mousePressed()
{
	c++;
	if(c < 8) {
		s = s /2;
		background(0);
		sierpinski(0, 500, l);
	}
	else {
		c = 0;
		s = 500;
		sierpinski(0, 500, l);
	}
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= s) {
		triangle(x, y, x + len/2, y - len,x + len, y);
	}
	else {
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}