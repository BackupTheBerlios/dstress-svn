#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]){
	int returnCode = system(argv[1]);
	printf("%d\n", returnCode);
	return 0;
}
