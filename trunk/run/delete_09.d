// $HeadURL$
// $Date$
// $Author$

module dstress.run.delete_09;

class Int{
	this(int i){
		this.i = i;
	}
	int i;
}

int main(){
	Int[char[]] array;
	Int a = new Int(1);
	array["eins"]=a;

	Int b = new Int(2);
	array["zwei"]=b;

	Int c = new Int(3);
	array["drei"]=c;

	assert(("zwei" in array)!==null);

	delete array["zwei"];
	
	assert(("zwei" in array)===null);
	assert(b!==null);

	return 0;
}
