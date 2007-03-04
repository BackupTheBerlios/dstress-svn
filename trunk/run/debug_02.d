// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <eisvogel@users.sourceforge.net>
// @date@	2004-10-16
// @uri@	news:ckro4i$1b4l$2@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2119

// __DSTRESS_DFLAGS__ -debug=2

module dstress.run.debug_02;

int main(){
	int i=0;
	assert(i==0);
	debug(1){
		i++;
		assert(i==1);
	}
	debug(2){
		i++;
		assert(i==2);
	}
	debug(3){
		assert(0);
	}
	assert(i==2);
	return 0;
}
