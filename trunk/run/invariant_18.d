module dstress.run.invariant_18;

class MyClass{
	invariant{
		assert(0);
	}
}

int main(){
	try{
		MyClass c = new MyClass();
	}catch{
		return 0;
	}
	assert(0);
}
