// $HeadURL$
// $Date$
// $Author$

// @author@	Neil Santos <Neil_member@pathlink.com>
// @date@	2005-09-27
// @uri@	news:dh9sf7$268e$1@digitaldaemon.com

module dstress.run.v.variadic_argument_08_B;

int status;

void foo (char[][] args ...){
	status = 1;
}

int main ()
{
	char[] a;
	char[] b;

	foo (a);
	assert(status == 1);
	
	return 0;
}

