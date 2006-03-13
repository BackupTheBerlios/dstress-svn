// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_04_D;

class Y{
}

typedef Y X;

int main(){
	static if(is(X == typedef) == 1){
		static if(is(X == class) == 0){
			return 0;
		}else{
			static assert (0);
		}
	}
}
