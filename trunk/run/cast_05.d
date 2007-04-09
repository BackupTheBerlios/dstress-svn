// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2004-08-06
// @uri@	news:cf0mo2$rfi$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1296

module dstress.run.cast_05;

int main(){
	long l = cast(long) 12.0;
	long L = 12L;
	assert(l == L);

	ulong u = cast(ulong) 12.0;
	ulong U = 12U;
	assert(U == u);
	
	return 0;
}
