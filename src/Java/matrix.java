import java.lang.*;

public class matrix {

	/*Algorithms*/
	public static void sequentialBasicAlg(int m_ar, int m_br, double[] pha, double[] phb, double[] phc) {
	  	int i, j, k;
	  	double temp;

		for(i = 0; i < m_ar; i++) {
		    for(j = 0; j < m_br; j++) {
		     	temp = 0;
				for(k = 0; k < m_ar; k++) {
					temp += pha[i*m_ar+k] * phb[k*m_br+j];
				}
				phc[i*m_ar+j] = temp;
			}
		}
	}

	public static void sequentialOptimizedAlg(int m_ar, int m_br, double[] pha, double[] phb, double[] phc) {
	  	int i, j, k;

	  	for(i = 0; i < m_ar; i++) {
	    	for(k = 0; k < m_ar; k++) {
	      		for(j = 0; j < m_br; j++) {
	        		phc[i*m_ar+j] += pha[i*m_ar+k] * phb[k*m_br+j];
	      		}
	    	}
	  	}
	}

	/*Aux functions*/
	/*Matrix creation and algorithm call*/
	public static void matrix_mult(int m_ar, int m_br, int opt, const int nr_threads) {
  		int i, j, k;
		ArrayList<double> pha = new ArrayList<double>();
		ArrayList<double> phb = new ArrayList<double>();
		ArrayList<double> phc = new ArrayList<double>();

  		for(i = 0; i < m_ar; i++)
    		for(j = 0; j < m_ar; j++)
      			pha[i*m_ar + j] = (double)1.0;

  		for(i = 0; i < m_br; i++)
    		for(j = 0; j < m_br; j++)
      			phb[i*m_br + j] = (double)(i+1);

      	//starts counting time
  		long tempo_nano1 = System.nanoTime();

  		switch (opt) {
    		case 1:
      			cout << "Executing sequentialBasicAlg" << endl;
      			sequentialBasicAlg(m_ar, m_br, pha, phb, phc);
      			break;
		    case 2:
		      	cout << "Executing sequentialOptimizedAlg" << endl;
		      	sequentialOptimizedAlg(m_ar, m_br, pha, phb, phc);
		      	break;
		    case 3:
		      	cout << "Executing parallelBasicAlg" << endl;
		      	parallelBasicAlg(m_ar, m_br, nr_threads, pha, phb, phc);
		      	break;
		    case 4:
		      	cout << "Executing parallelOptimizedAlg" << endl;
		      	parallelOptimizedAlg(m_ar, m_br, nr_threads, pha, phb, phc);
		      	break;
		    default:
		      	cout << "Wrong option! opt=" << opt << ". Please use 1, 2, 3 or 4." << endl;
		      	exit(0);
		}
  		
  		//stops counting time
  		long tempo_nano2 = System.nanoTime();

  		long tempo_execucaoLong = (tempo_nano2-tempo_nano1)/10000;	//time in hundredths of miliseconds
		String tempo_execucaoString = String.valueOf(tempo_execucaoLong);

  		System.out.println("0.00" + tempo_execucaoString);

		System.out.println("Result matrix: ");
		
		for(i = 0; i < 1; i++) {
			for(j = 0; j < min(10,m_br); j++)
				System.out.print(phc[j] + " ");
		}
	
		System.out.println("");
	}


    public static void main(String[] args) {
        /*Main execution*/
	  	char c;
	  	int lin, col, nr_threads = 1;
	  	int opt = 0;

	  	if(args.length < 2) {
	  		System.out.println(args[1]);
	  		System.out.println("Usage: ./matrix_mult <lins> <cols> <opt> <?nr_threads>");
		  	System.out.println("opt:");
		  	System.out.println("(Sequential)");
		  	System.out.println("1. Basic Algorithm");
		  	System.out.println("2. Optimized Algorithm");
		  	System.out.println("(Parallel)");
		  	System.out.println("3. Basic Algorithm");
		  	System.out.println("4. Optimized Algorithm");
		  	System.out.println("");
		  	System.out.println("");

		    return;
		} else {
		    lin = Integer.parseInt(args[1]);
		    col = Integer.parseInt(args[2]);
		    opt = Integer.parseInt(args[3]);

		    if(args[4] != null)
		    	nr_threads = Integer.parseInt(args[4]);
		}
		
		//matrix_mult(lin, col, opt, nr_threads);
		/**/
		System.out.println("");
		System.out.println("");
	}
}
