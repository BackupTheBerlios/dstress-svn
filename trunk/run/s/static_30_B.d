// $HeadURL$
// $Date$
// $Author$

// @author@	xs0 <xs0@xs0.com>
// @date@	2005-05-12
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3960

module dstress.run.s.static_30_B;

class Foo{
	int hash(){
		return 0;
	}

	static int hash(int val){
		return val+1;
	}
}

int main(){
	assert(Foo.hash(10)==11);
	return 0;
}
