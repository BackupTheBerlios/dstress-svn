// $HeadURI$
// $Date$
// $Author$

// @uri@	news:opsh76x6l7jccy7t@simon.homenet
// @author@	Simon Buchan <currently@no.where>
// @date@	2004-11-30
// @uri@	nntp://news.digitalmars.com/digitalmars.D.bugs:2371

// __DSTRESS_ELINE__ 14

module dstress.nocompile.bug_expression_661_A;

ulong[cast(uint)((cast(float)byte.sizeof/ulong.sizeof)-int.max>>2)+int.max>>2] hexarray;

int main(){
	assert(!(hexarray is null));
	return 0;
}
