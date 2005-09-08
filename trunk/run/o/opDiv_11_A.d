// $HeadURL$
// $Date$
// $Author$

// @author@	Hiroshi Sakurai <Hiroshi_member@pathlink.com>
// @date@	2005-08-24
// @uri@	news:dehc8m$1nk5$1@digitaldaemon.com
// @uri@	http://f17.aaa.livedoor.jp/~labamba/?BugTrack%2F19

module dstress.run.o.opDiv_11_A;

void test_A(int i){
	assert(i==1);
}

void test_B(int i){
	assert(i==-1);
}

int main(){
	test_A(3/3);
	test_B(-3/3);
	test_B(3/-3);
	test_A(-3/-3);
	test_B((-3)/3);
	test_A((-3)/(-3));
	test_B(3/(-3));
	return 0;	
} 