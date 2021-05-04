//********************************************************************
//  Pascal.java       Author: Kenneth Haight
//
//  Creates Pascal's Triangle using recursion reliably up to 15 rows
//  The program is recursive on line 38 by calling the method upon itself twice in its return method, which
//  essentially prints the triangles shape and fills in the numbers according to both the sum of the two recursive calls
//********************************************************************
import java.util.Scanner;
public class Pascal {
  public static void main(String[] args) {
	    Scanner scanner = new Scanner(System.in);
	    System.out.print("Enter the number of rows to print: ");
	    int rows = scanner.nextInt();
	    System.out.println("Pascal Triangle:");
	    print(rows);
	    scanner.close();
	  }

	  public static void print(int n) {
		  int p = n;
	    for (int i = 0; i < n; i++) {
	    	for(int k = 0; k < p*9; k+=3) {
	    		System.out.print(" ");
	    	}
	    	p--;
	    	System.out.print(" ");
	      for (int j = 0; j <= i; j++) {
	        System.out.print(triangle(i, j) + "     ");

	      }
	      System.out.println();
	    }	
	  }

	  public static int triangle(int i, int j) {
	    if (j == 0 || j == i) {
	      return 1;
	    } else {
	      return triangle(i - 1, j - 1) + triangle(i - 1, j);
	    }
	  }
	}
