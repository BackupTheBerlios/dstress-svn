// $HeadURL$ $Date$ ($Author$)

// http://en.wikipedia.org/wiki/Ackermann_function#Use_as_benchmark

#include <time.h>
#include <stdio.h>

int ack(int M, int N) {
	return (M ? (ack(M-1,N ? ack(M,(N-1)) : 1)) : N+1); 
}

int main(int argc, char *argv[]) {
	if(argc!=3){
		printf("%s%s",argv[0],": m n\n\twhere n and m are integers\n");
		return 0;
	}
	int m = atoi(argv[1]);
	int n = atoi(argv[2]);

	printf("ack(%d,%d): ",m,n);
	clock_t start=clock();
	int back=ack(m,n);
	clock_t end=clock();
	double passed = end - start;
	passed /= ((double)CLOCKS_PER_SEC);
	printf("%d (%e seconds)\n", back, passed);
	return(0);
}

