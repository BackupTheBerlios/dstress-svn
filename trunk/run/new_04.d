// $HeadURL$
// $Date$
// $Author$

module dstress.run.new_04;

extern(C) void* malloc(size_t);

byte a;

class MyClass{
	byte b;

	this(byte c){
		b=c;
	}

	new(size_t size, byte blah){
		void* v=malloc(size);
		if(v is null){
			throw new Exception(null);
		}
		a=blah;
		return v;
	}
}

int main(){
	MyClass m = new(21) MyClass(12);
	assert(m.b==12);
	assert(a==21);
	return 0;
}
