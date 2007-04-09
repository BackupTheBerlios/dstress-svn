// $HeadURL$
// $Date$
// $Author$

// @author@	John C <johnch_atms@hotmail.com>
// @date@	2005-12-04
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5738

module dstress.run.v.variadic_argument_11_B;

class Testing {
    this(int a, ...){
    }
}

int main(){
	Testing test = new Testing(1, 2, 3);
	assert(test);
	return 0;
}

