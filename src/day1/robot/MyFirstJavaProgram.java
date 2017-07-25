package day1.robot;

import java.awt.Color;
import org.jointheleague.graphical.robot.Robot;

public class MyFirstJavaProgram {
	public static void main(String[] args) {
		
		// START HERE
Robot r2d2=new Robot();
r2d2.penDown();
r2d2.setSpeed(10);
for (int i = 0; i < 2; i++) {
	r2d2.setPenColor(Color.BLUE);
	r2d2.turn(90);
	r2d2.move(100);
	r2d2.setPenColor(Color.RED);
	r2d2.turn(90);
	r2d2.move(100);
}

	}
}
