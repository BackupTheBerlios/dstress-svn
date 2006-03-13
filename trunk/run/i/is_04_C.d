// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_04_C;

typedef int X;

int main(){
	static if(is(X == typedef) == 1){
		return 0;
	}
}
