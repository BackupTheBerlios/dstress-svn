// $HeadURL$
// $Date$
// $Author$

module dstress.run.overload_03;

int status;

void check( byte b){
	status+=b;
}

void check( short s ){
	status-=s;
}

void check( int i ){
	status+= i*2;
}

int main(){

	byte b = 2;
	short s = 3;
	int i = 4;

	assert(status == 0);
	check(b);
	assert(status == 2);
	check(s);
	assert(status == -1);
	check(i);
	assert(status == 7 );
	return 0;
}

