#include <omp.h>
#include <stdio.h>
#include <iostream>
#include <iomanip>
#include <time.h>
#include <cstdlib>
#include <papi.h>
#include <math.h>       /* pow */

using namespace std;

#define SYSTEMTIME clock_t
#define BILLION 1000000000L

/*Algorithms*/
void sequentialBasicAlg(int m_ar, int m_br, double *pha, double *phb, double *phc){

  int i, j, k;
  double temp;

	for(i=0; i<m_ar; i++){
		for(j=0; j<m_br; j++){
		  temp = 0;
				for(k=0; k<m_ar; k++){
					temp += pha[i*m_ar+k] * phb[k*m_br+j];
				}
				phc[i*m_ar+j]=temp;
		}
	}

}

void sequentialOptimizedAlg(int m_ar, int m_br, double *pha, double *phb, double *phc){

  int i, j, k;
  double temp;

  for(i=0; i<m_ar; i++){
    for(k=0; k<m_ar; k++){
      for(j=0; j<m_br; j++){
        phc[i*m_ar+j] +=  pha[i*m_ar+k] * phb[k*m_br+j];
      }
    }
  }

}

void parallelBasicAlg(int	 m_ar, int m_br, int nr_threads, double *pha, double *phb, double *phc){

  int i, j, k;
  double temp;

  #pragma omp parallel for private(j, k)  num_threads(nr_threads)
	for(i=0; i<m_ar; i++){
		for(j=0; j<m_br; j++){
		  temp = 0;
				for(k=0; k<m_ar; k++){
					temp += pha[i*m_ar+k] * phb[k*m_br+j];
				}
				phc[i*m_ar+j]=temp;
		}
	}
}

void parallelOptimizedAlg(int m_ar, int m_br, int nr_threads, double *pha, double *phb, double *phc){

  int i, j, k;
  double temp;

	#pragma omp parallel for private(j, k)  num_threads(nr_threads)
	  for(i=0; i<m_ar; i++){
		for(k=0; k<m_ar; k++){
		  for(j=0; j<m_br; j++){
			phc[i*m_ar+j] +=  pha[i*m_ar+k] * phb[k*m_br+j];
		  }
		}
	  }

}
/**/

/*Aux functions*/

double MflopsCalc(int nInstructions, double executionTime){
  double MILLION = 1000000;
  return (double) ((2 * pow(nInstructions, 3))/executionTime) / MILLION;			//Cap = [Mflop/s] = (2n^3/t)
}

float produtoInterno(float *v1, float *v2, int col){
	int i;
	float soma=0.0;

	for(i=0; i<col; i++)
		soma += v1[i]*v2[i];

	return(soma);

}

void handle_error (int retval){
  printf("PAPI error %d: %s\n", retval, PAPI_strerror(retval));
  exit(1);
}

void init_papi(){
  int retval = PAPI_library_init(PAPI_VER_CURRENT);
  if (retval != PAPI_VER_CURRENT && retval < 0) {
    printf("PAPI library version mismatch!\n");
    exit(1);
  }
  if (retval < 0) handle_error(retval);

  std::cout << "PAPI Version Number: MAJOR: " << PAPI_VERSION_MAJOR(retval)
            << " MINOR: " << PAPI_VERSION_MINOR(retval)
            << " REVISION: " << PAPI_VERSION_REVISION(retval) << "\n";
}
/**/

/*Matrix creation and algorithm call*/
void matrix_mult(int m_ar, int m_br, int opt, const int nr_threads){
  SYSTEMTIME Time1, Time2;
  struct timespec startTime, endTime;

  int i, j, k;
	char st[100];
	double *pha, *phb, *phc;

  pha = (double *)malloc((m_ar * m_ar) * sizeof(double));
  phb = (double *)malloc((m_ar * m_ar) * sizeof(double));
  phc = (double *)malloc((m_ar * m_ar) * sizeof(double));

  for(i=0; i<m_ar; i++)
    for(j=0; j<m_ar; j++)
      pha[i*m_ar + j] = (double)1.0;

  for(i=0; i<m_br; i++)
    for(j=0; j<m_br; j++)
      phb[i*m_br + j] = (double)(i+1);

  clock_gettime(CLOCK_REALTIME, &startTime);
  Time1 = clock();
  switch (opt) {
    case 1:
      cout << "Executing sequentialBasicAlg" <<endl;
      sequentialBasicAlg(m_ar, m_br, pha, phb, phc);
      break;
    case 2:
      cout << "Executing sequentialOptimizedAlg" <<endl;
      sequentialOptimizedAlg(m_ar, m_br, pha, phb, phc);
      break;
    case 3:
      cout << "Executing parallelBasicAlg" <<endl;
      parallelBasicAlg(m_ar, m_br, nr_threads, pha, phb, phc);
      break;
    case 4:
      cout << "Executing parallelOptimizedAlg" <<endl;
      parallelOptimizedAlg(m_ar, m_br, nr_threads, pha, phb, phc);
      break;
    default:
      cout << "Wrong option! opt=" << opt << ". Please use 1, 2, 3 or 4." << endl;
      exit(0);
  }
  clock_gettime(CLOCK_REALTIME, &endTime);
  Time2 = clock();

  double executionTime = ( endTime.tv_sec - startTime.tv_sec ) + (double)( endTime.tv_nsec - startTime.tv_nsec ) / (double)BILLION;
  sprintf(st, "\nTotal Time of execution: %3.3lf seconds", executionTime);
  cout << st;
  sprintf(st, "\nTotal Time accumulated between threads: %3.3f seconds\n", (double)(Time2 - Time1) / CLOCKS_PER_SEC);
  cout << st;
  double mFlops = MflopsCalc(max(m_ar, m_br), executionTime);
  cout << "Cap(Mflop/s) = " << mFlops << endl;


	cout << "\nResult matrix: " << endl;
	for(i=0; i<1; i++)
	{	for(j=0; j<min(10,m_br); j++)
			cout << phc[j] << " ";
	}
	cout << endl;

  free(pha);
  free(phb);
  free(phc);

}
/**/

/*Main*/
int main (int argc, char *argv[])
{

  /*PAPI HANDLERS*/
	int EventSet = PAPI_NULL;
  long long values[2];
  int ret;


	ret = PAPI_library_init( PAPI_VER_CURRENT );
	if ( ret != PAPI_VER_CURRENT )
		std::cout << "FAIL" << endl;

	ret = PAPI_create_eventset(&EventSet);
	if (ret != PAPI_OK) cout << "ERRO: create eventset" << endl;

	ret = PAPI_add_event(EventSet,PAPI_L1_DCM );
	if (ret != PAPI_OK) cout << "ERRO: PAPI_L1_DCM" << endl;

	ret = PAPI_add_event(EventSet,PAPI_L2_DCM);
	if (ret != PAPI_OK) cout << "ERRO: PAPI_L2_DCM" << endl;
  /**/

  /*Main execution*/
  char c;
  int lin, col, nr_threads=1;
  int opt=0;

  if(argc < 3){
    cout <<
    endl << "Usage: ./matrix_mult <lins> <cols> <opt> <?nr_threads>" <<
    endl << "opt:" <<
    endl << "(Sequential)" <<
    endl << "1. Basic Algorithm" <<
    endl << "2. Optimized Algorithm" <<
    endl << "(Parallel)" <<
    endl << "3. Basic Algorithm" <<
    endl << "4. Optimized Algorithm" << endl << endl;
    return 0;
  }else{
    lin = atoi(argv[1]);
    col = atoi(argv[2]);
    opt = atoi(argv[3]);

    if(argv[4])
      nr_threads = atoi(argv[4]);
  }

	// Start counting
	ret = PAPI_start(EventSet);
	if (ret != PAPI_OK) cout << "ERRO: Start PAPI" << endl;

	matrix_mult(lin, col, opt, nr_threads);
  /**/

  cout << endl;
	ret = PAPI_stop(EventSet, values);
	if (ret != PAPI_OK) cout << "ERRO: Stop PAPI" << endl;
	printf("L1 DCM: %lld \n",values[0]);
	printf("L2 DCM: %lld \n",values[1]);
  cout << endl;

		ret = PAPI_reset( EventSet );
		if ( ret != PAPI_OK )
			std::cout << "FAIL reset" << endl;

		ret = PAPI_remove_event( EventSet, PAPI_L1_DCM );
		if ( ret != PAPI_OK )
			std::cout << "FAIL remove event" << endl;

		ret = PAPI_remove_event( EventSet, PAPI_L2_DCM );
		if ( ret != PAPI_OK )
			std::cout << "FAIL remove event" << endl;

		ret = PAPI_destroy_eventset( &EventSet );
		if ( ret != PAPI_OK )
			std::cout << "FAIL destroy" << endl;

}
