// $HeadURL$
// $Date$
// $Author$

// @author@	Buchan <kbuchan@xtra.co.nz>
// @date@	2004-11-14
// @uri@	news:opshfzxz0b44buww@simon.homenet
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2262

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.in_out_body_03;

bool in_checked;
bool out_checked;

class MyClass{
	int i;
}

void outer(){
	MyClass inner()
	in{
		in_checked=true;
	}out (result){
		assert(result.i==1);
		out_checked=true;
	}body{
		MyClass s=new MyClass;
		s.i = 1;
		return s;
	}
	assert(inner.i==1);
}

int main(){
	outer();
	assert(in_checked);
	assert(out_checked);
	return 0;
}
