// $HeadURL$
// $Date$
// $Author$

// @author@	tetsuya <tetsuya_member@pathlink.com>
// @date@	2004-11-15
// @uri@	news:cnaidd$2rnr$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2275

module dstress.run.default_argument_06;

template Template(int L){
	int i=L;
	int test(int b = i) {
		return b;
	}
}

int main(){
	mixin Template!(10);
	assert(test()==10);
	return 0;
}
