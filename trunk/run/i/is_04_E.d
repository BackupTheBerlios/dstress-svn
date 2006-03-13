// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_04_E;

class Y{
}

typedef Y X;

int main(){
	static if(is(X == typedef) == 1){
		static if(is(X == Y) == 0){
			return 0;
		}else{
			static assert (0);
		}
	}
}
