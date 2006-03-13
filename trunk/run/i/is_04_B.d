// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_04_B;

class X{
}

int main(){
	static if(is(X == class) == 1){
		return 0;
	}
}
