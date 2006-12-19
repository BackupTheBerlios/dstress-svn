// $HeadURL$
// $Date$
// $Author$

module dstress.run.sizeof_04;

int main(){
	int[char[]] array;
	if(array.sizeof != (byte[byte]).sizeof){
		assert(0);
	}
	array["drei"]=3;
	array["sieben"]=7;
	if(array.sizeof != (byte[byte]).sizeof){
		assert(0);
	}
	return 0;
}
