// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2004-11-15
// @uri@	news://cn9vah$1shn$1@digitaldaemon.com
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2270

module dstress.run.struct_17;

struct {
	int dummy;
}

int main(){
	assert(dummy==0);
	return 0;
}
