// $HeadURL$
// $Date$
// $Author$

module dstress.run.static_12;

int status;
class MyClass{
	static this(){
		status = 9;
	}
}

int main(){
	assert( status == 9 );
	return 0;
}
