// $HeadURL$
// $Date$
// $Author$

module dstress.run.opCatAssign_11;

int main(){
	dchar[] array;
	assert(array.length==0);
	array~="abc";
	assert(array.length==3);
	return 0;
}
