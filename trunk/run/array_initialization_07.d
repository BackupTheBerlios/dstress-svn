// $HeadURL$
// $Date$
// $Author$

// @author@	Andrew Fedoniouk <news@terrainformatica.com>
// @date@	2005-04-12
// @uri@	news:d3hjto$cl8$1@digitaldaemon.com

module dstress.run.array_initialization_07;

typedef int Type = 12;
Type[2] var = [0:1];

int main(char[][] args){
	assert(var[0] == 1);
	assert(var[1] == 12);
	return 0;
}

