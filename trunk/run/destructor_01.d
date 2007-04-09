// $HeadURL$
// $Date$
// $Author$

// @author@	David Friedman <d3rdclsmail@earthlink.net>
// @date@	2004-05-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=51

module dstress.run.destructor_01;

int status;

class ClassA{
	this(){
		status++;
		assert(status==1);
	}

	~this(){
		status--;
		assert(status==0);
	}
}

class ClassB : ClassA {}

void test(){
	auto ClassB b = new ClassB();
	
}

int main(){
	test();
	return 0;
}
