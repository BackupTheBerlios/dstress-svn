// $HeadURL$
// $Date$
// $Author$

// @author@	Michael Butscher <mbutscher@gmx.de>
// @date@	2005-05-15
// @uri@	news:MPG.1cf1a08e35a16a9b989684@news.digitalmars.com

module dstress.run.a.array_initialization_16;

static int bigarray[100][100];

int main(){
	if(bigarray.length != 100){
		assert(0);
	}
	if(bigarray[0].length != 100){
		assert(0);
	}

	int counter=0;

	for(int i=0; i< 100; i++){
		for (int j=0; j<100; j++){
			bigarray[i][j]=counter;
			if(bigarray[i][j] != counter++){
				assert(0);
			}
		}
	}

	if(counter != 100*100){
		assert(0);
	}

	return 0;
}

