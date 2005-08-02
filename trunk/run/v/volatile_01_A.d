// $HeadURL$
// $Date$
// $Autor$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-07-31
// @uri@	news:dciqn7$73f$1@digitaldaemon.com
	
module dstress.run.v.volatile_01_A;

template load( T, int i, size_t sizeofT : 4 = T.sizeof ){
	T load( inout T val ){
		volatile asm{
			naked;
			mov EAX, [EAX];
			ret;
		}
	}
}

int main(){
	int i;
	load!(int,1)(i);
	load!(int,2)(i);
	return 0;
}