// $HeadURL$ $Date$ ($Author$)

// http://en.wikipedia.org/wiki/Ackermann_function#Use_as_benchmark

import std.c.stdio;
import std.string;
import std.c.time;

// @bugwatch@ handle a bug in Phobos (dmd-0.105)
version(linux){
        const double CLOCKS_PER_SEC = 1000000.0;
}else version(darwin){
        const double CLOCKS_PER_SEC = 100.0;
}

double seconds(){
        return (cast(double) clock()) / (cast(double)CLOCKS_PER_SEC);
}

int ack(int M, int N) { return (M ? (ack(M-1,N ? ack(M,(N-1)) : 1)) : N+1); }

int main(char[][] argv) {
	if(argv.length!=3){
		printf("%s%s",argv[0],": m n\n\twhere n and m are integers\n");
		return 0;
	}
	int m = atoi(argv[1]);
	int n = atoi(argv[2]);

	printf("ack(%d,%d): ",m,n);
	double start=seconds();
	int back=ack(m,n);
	double end=seconds();
	printf("%d (%e seconds)\n",back,end-start);
	return 0;
}

