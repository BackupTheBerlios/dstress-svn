
// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-07-28
// @uri@	news://ce8u1g$ibj$1@digitaldaemon.com

int main(){
	void foo( int x ){
		assert(0);
	}
	
	void foo( short s ){
	}

	short s=1;
	foo( s );

	return 0;
}
