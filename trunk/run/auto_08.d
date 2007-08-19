// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2005-04-14
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3645

module dstress.run.auto_08;

int status;

auto class Parent{
}

auto class Child : Parent{
	this(){
		if(0 != status){
			assert(0);
		}
		status=1;
	}    

	~this(){
		if(1 != status){
			assert(0); 
		}
		status=2;
	}
}

void test(){
	auto Child o = new Child();
	if(1 != status){
		assert(0);
	}
}

int main(){
	test();
	
	if(status==2){
		return 0;
	}
	assert(0);
}

