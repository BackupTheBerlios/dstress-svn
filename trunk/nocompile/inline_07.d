// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas-dloop@kuehne.THISISSPAM.cn>
// @date@	2005-02-19
// @uri@	news:cv77ei$27mv$3@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3017

// __DSTRESS_DFLAGS__ -inline
// __DSTRESS_ELINE__ 22

module dstress.nocompile.inline_07;

struct MyStruct{
	int bug() {
		return 3;
	}
}

int main(){
	assert(MyStruct.bug()==3);
	return 0;
}