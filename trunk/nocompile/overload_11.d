// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-10-16
// @uri@	news:ckrq8e$1cnl$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2121

// __DSTRESS_ELINE__ 30

module dstress.nocompile.overload_11;

int test(real a, real b){
	assert(0);
	return 1;
}

int test(real a, int b){
	assert(0);
	return 2;
}

int test(real a, uint b){
	return 3;
}

int main(){
	uint uInt = 6;
	assert(test(5.0, uInt)==3);
	return 0;
}
