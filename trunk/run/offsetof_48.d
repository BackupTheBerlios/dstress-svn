// $HeadURL$
// $Date$
// $Author$

// @author@	<derick_eddington@nospam.yahoo.nospam.com>
// @date@	2005-03-06
// @uri@	news:d0dfb6$1mrv$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3091

module dstress.run.offsetof_48;

struct MyStruct{
	idouble* x;
}

int main(){
	size_t t = MyStruct.x.offsetof;
	return 0;
}
