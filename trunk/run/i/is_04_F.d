// $HeadURL$
// $Date$
// $Author$

module dstress.run.i.is_04_F;

class Y{
}

alias Y X;

int main(){
	static if(is(X == typedef) == 0){
		static if(is(X == Y) == 1){
			return 0;
		}else{
			static assert (0);
		}
	}
}
