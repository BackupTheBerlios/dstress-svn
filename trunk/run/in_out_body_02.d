// $HeadURL$
// $Date$
// $Author$

// @author@	Buchan <kbuchan@xtra.co.nz>
// @date@	2004-11-14
// @uri@	news:opshfzxz0b44buww@simon.homenet
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2262

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.in_out_body_02;

struct MyStruct{
	int i;
}

void outer(){
	MyStruct inner()
	in{
		assert(1);
	}out (result){
		assert(result.i==1);
	}body{
		MyStruct s;
		s.i = 1;
		return s;
	}
	assert(inner.i==1);
}

int main(){
	outer();
	return 0;
}
