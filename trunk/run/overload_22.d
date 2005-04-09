// $HeadURL$
// $Date$
// $Author$

// @author@	Kirs <fu@bar.com>
// @date@	2005-04-08
// @uri@	news:d37pf8$17b3$2@digitaldaemon.com

module dstress.run.overload_22;

int init (int x) {
	return 0;
}

static void init (long y) {
	return 1;
}

int main(){
	assert(init(3L)==1);
	assert(init(5)==0);
	return 0;
}



