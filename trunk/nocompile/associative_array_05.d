// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2004-12-19
// @uri@	news://cq2h5u$2n99$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D/13868

module dstress.nocompile.associative_array_05;

int main(){
	int[char[]] array;
	assert(array.length==0);
	array["eins"]=1;
	assert(array.length==1);
	array["zwei"];
	assert(array.length==1);
	return 0;
}

