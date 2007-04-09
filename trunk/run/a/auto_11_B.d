// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-10-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5222

module dstress.run.a.auto_11_B;

class C{
	int value() {
		return 5;
	}
}

int main(){
	C c = new C();

	auto i = c.value();

	if(i != 5){
		assert(0);
	}

	return 0;
}




