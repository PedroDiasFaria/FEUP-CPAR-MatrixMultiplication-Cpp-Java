import java.lang.*;

public class Matrix {

	private int lin, col;
	private long[][] matrixValues;

	/*Constructor & Set/Get*/
	public Matrix(int lin, int col, char matrixID){
		this.lin = lin;
		this.col = col;
		matrixValues = new long[lin][col];
		int multiplier = 0;

		switch(matrixID){
			case 'a':
				multiplier = 0;
				break;
			case 'b':
				multiplier = 1;
				break;
			default:
				break;
		}

		int i, j;

		for(i=0; i<lin; i++)
			for(j=0; j<col; j++)
				matrixValues[i][j] = (long)(1.0 + i*multiplier);
	}

	public void set(int lin, int col, long value){
		matrixValues[lin][col] = value;
	}

	public long get(int l, int c){
		return matrixValues[l][c];
	}
	/**/

	/*Algorithms*/
	public static void sequentialBasicAlg(int m_ar, int m_br, Matrix pha, Matrix phb, Matrix phc) {
	  	int i, j, k;
	  	long temp;

		for(i = 0; i < m_ar; i++) {
		    for(j = 0; j < m_br; j++) {
		     	temp = 0;
				for(k = 0; k < m_ar; k++) {
					temp += pha.get(i, k) * phb.get(k, j);
				}
				phc.set(i, j, temp);
			}
		}
	}

	public static void sequentialOptimizedAlg(int m_ar, int m_br, Matrix pha, Matrix phb, Matrix phc) {
	  	int i, j, k;

	  	for(i = 0; i < m_ar; i++) {
	    	for(k = 0; k < m_ar; k++) {
	      		for(j = 0; j < m_br; j++) {
	        		phc.set(i, j, ( phc.get(i, j) + pha.get(i, k) * phb.get(k, j)));
	      		}
	    	}
	  	}
	}

	/*Aux functions*/
	/*Matrix creation and algorithm call*/
	public static void matrix_mult(int m_ar, int m_br, int opt) {
  		int i, j, k;
			long startTime, endTime;
			double BILLION = 1000.0;

			Matrix pha = new Matrix(m_ar, m_br, 'a');
			Matrix phb = new Matrix(m_ar, m_br, 'b');
			Matrix phc = new Matrix(m_ar, m_br, 'c');

      	//starts counting time
  		startTime = System.currentTimeMillis();

  		switch (opt) {
    		case 1:
						System.out.println("Executing sequentialBasicAlg");
      			sequentialBasicAlg(m_ar, m_br, pha, phb, phc);
      			break;
		    case 2:
		      	System.out.println("Executing sequentialOptimizedAlg");
		      	sequentialOptimizedAlg(m_ar, m_br, pha, phb, phc);
		      	break;
		    default:
		      System.out.println("Wrong option! opt=" + opt + ". Please use 1 or 2.");
					return;
		}

  		//stops counting time
  		endTime = System.currentTimeMillis();

  	double executionTime = (double)(endTime-startTime)/BILLION;
		String executionTimeString = String.valueOf(executionTime);
  	System.out.println("\nTotal Time of execution: " + executionTimeString + " seconds");
		System.out.println("Cap(Mflop/s) = " + MflopsCalc(Math.max(m_ar, m_br), executionTime));
		System.out.println("\nResult matrix: ");

		for(i = 0; i < 1; i++) {
			for(j = 0; j < Math.min(10,m_br); j++)
				System.out.print(String.valueOf(phc.get(i, j)).split("\\.")[0] + " ");
		}



		System.out.println("");
	}


	public static double MflopsCalc(int nInstructions, double executionTime){
		double MILLION = 1000000;
		return (double) ((2 * Math.pow(nInstructions, 3))/executionTime) / MILLION;			//Cap = [Mflop/s] = (2n^3/t)
	}
	/**/

		/*Main execution*/
    public static void main(String[] args) {

	  	char c;
	  	int opt = 0;
			int lin, col;

	  	if(args.length < 3) {
	  		System.out.println("Usage: matrix <lins> <cols> <opt>");
		  	System.out.println("opt:");
		  	System.out.println("(Sequential)");
		  	System.out.println("1. Basic Algorithm");
		  	System.out.println("2. Optimized Algorithm");
		  	System.out.println("");
		  	System.out.println("");

		    return;
		} else {
		    lin = Integer.parseInt(args[0]);
		    col = Integer.parseInt(args[1]);
		    opt = Integer.parseInt(args[2]);
		}

		matrix_mult(lin, col, opt);
		/**/
		System.out.println("");
		System.out.println("");
	}
}
