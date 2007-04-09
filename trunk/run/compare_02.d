// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <bhinkle4@juno.com>
// @date@	2004-08-07
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1306

module dstress.run.compare_02;

class MyClass{
}

int main(){
	MyClass c = new MyClass();
	assert( !(c is null));

	return 0;
}
