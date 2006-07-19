// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <noone@nowhere.com>
// @date@	2005-09-27
// @uri@	news:dhc170$qa0$2@digitaldaemon.com

module dstress.run.b.bug_expression_5818_A;

int status;

void add( MyStruct val ){
	uint test = 1;
	if ( test > val.value ){
		status = -1;
	} else {
		status = 1;
	}
}

struct MyStruct{
	int value;
}

int main(){
	MyStruct s;

	s.value = 2;
	add(s);
	if(status != 1){
		assert(0);
	}

	s.value = 0;
	add(s);
	if(status != -1){
		assert(0);
	}

	return 0;
}
