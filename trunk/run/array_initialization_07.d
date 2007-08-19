// $HeadURL$
// $Date$
// $Author$

// @author@	Andrew Fedoniouk <news@terrainformatica.com>
// @date@	2005-04-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3632

module dstress.run.array_initialization_07;

typedef int Type = 12;
Type[2] var = [0:1];

int main(){
	if( 1 != var[0] ){
		assert(0);
	}
	if( 12 != var[1] ){
		assert(0);
	}
	return 0;
}

