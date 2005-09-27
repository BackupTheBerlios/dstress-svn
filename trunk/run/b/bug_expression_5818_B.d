// $HeadURL$
// $Date$
// $Author$

// @author@	David Medlock <noone@nowhere.com>
// @date@	2005-09-27
// @uri@	news:dhc170$qa0$2@digitaldaemon.com

module dstress.run.b.bug_expression_5818_B;

int status;

void add( MyClass val ){
	uint test = 1;
	if ( test > val.value ){
		status = -1;
	} else {
		status = 1;
	}
}

class MyClass{
	int value;
}

int main(){
	MyClass s = new MyClass();

	s.value = 2;
	add(s);
	assert(status == 1);

	s.value = 0;
	add(s);
	assert(status == -1);

	return 0;
}
