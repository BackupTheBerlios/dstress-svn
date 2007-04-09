// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-12-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5738

module dstress.run.v.variadic_argument_11_C;

class Testing(int i){
	this(int a, ...){
	}
}

int main(){
	Testing!(0) test = new Testing!(0)(1, 2, 3);
	assert(test);
	return 0;
}

