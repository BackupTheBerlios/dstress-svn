// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-10-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5222

module dstress.run.a.auto_11_C;

struct S{
	int value() {
		return 5;
	}
}

int main(){
	S s;

	auto i = s.value();

	if(i != 5){
		assert(0);
	}

	return 0;
}




