//********************************************************************
//  Pascal.java       Author: Kenneth Haight
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
	    	for(int k = 0; k < p*2-i+n; k+=3) {
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
	    } 
	    else {
	      return triangle(i - 1, j - 1) + triangle(i - 1, j);
	    }
	  }
	}
