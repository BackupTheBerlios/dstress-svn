// $HeadURL$
// $Date$
// $Author$

module dstress.run.length_02;

int main(){
	int[char[]] array;
	assert(array.length == 0);
	array["drei"]=3;
	array["sieben"]=7;
	assert(array.length == 2);
	return 0;
}
