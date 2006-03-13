// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_03_C;

class X{
}

int main(){
	static if(is(X : Object) == 1){
		return 0;
	}
}
