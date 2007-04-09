// $HeadURL$
// $Date$
// $Author$

// @author@	Buchan <kbuchan@xtra.co.nz>
// @date@	2004-11-14
// @uri@	news:opshfzxz0b44buww@simon.homenet
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2262

// __DSTRESS_TORTURE_BLOCK__ -release

module dstress.run.in_out_body_04;

void outer(){
	int inner()
	in{
		assert(1);
	}out (result){
		assert(result==1);
	}body{
		return 1;
	}
	assert(inner==1);
}

int main(){
	outer();
	return 0;
}
