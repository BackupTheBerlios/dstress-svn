// $HeadURL$
// $Date$
// $Author$

module dstress.run.static_03;

class MyClass{
	static int status;
	static void staticCheck(){
		status++;
	}

	void liveCheck(){
		status--;
	}

	void liveCheck2(){
		staticCheck();
	}
}

int main(){
	MyClass a;
	MyClass b = new MyClass();
	a.staticCheck();
	assert( a.status == 1 );
	assert( b.status == 1 );
	assert( MyClass.status == 1 );

	b.staticCheck();
	assert( a.status == 2 );
	assert( b.status == 2 );
	assert( MyClass.status == 2 );

	MyClass.staticCheck();
	assert( a.status == 3 );
	assert( b.status == 3 );
	assert( MyClass.status == 3 );

	b.liveCheck();
	assert( a.status == 2 );
	assert( b.status == 2 );
	assert( MyClass.status == 2 );

	b.liveCheck2();
	assert( a.status == 3 );
	assert( b.status == 3 );
	assert( MyClass.status == 3 );

	return 0;
}
