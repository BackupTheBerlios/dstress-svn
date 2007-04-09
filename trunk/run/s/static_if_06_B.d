// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-11-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5391

module dstress.run.s.static_if_06_B;

template t(int n){
	static if (n==1) {
		int a = n + 1;
	} else {
		int a = -n;
	}
}

int main(){
	mixin t!(1);

	assert(a == 2);

	return 0;
}
