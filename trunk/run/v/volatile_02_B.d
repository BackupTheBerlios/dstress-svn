// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-12-02
// @uri@	news:dmqv98$1868$1@digitaldaemon.com

module dstress.run.v.volatile_02_B;

template atomicLoad( T ){
	T atomicLoad( inout T val ){
		volatile{
			return val;
		}
	}
}

int main(){
	int  i;
	atomicLoad!(int)(i);
	return 0;
}



