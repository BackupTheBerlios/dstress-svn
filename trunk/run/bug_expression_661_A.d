// $HeadURI$
// $Date$
// $Author$

// @uri@	news:opsh76x6l7jccy7t@simon.homenet
// @author@	Simon Buchan <currently@no.where>
// @date@	2004-11-30
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs:2371

module dstress.run.bug_expression_661_A;

ulong[cast(uint)((cast(float)byte.sizeof/ulong.sizeof)-int.max>>2)+int.max>>2] hexarray;

int main(){
	assert(!(hexarray === null));
	return 0;
}
