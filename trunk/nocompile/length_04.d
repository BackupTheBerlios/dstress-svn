// $HeadURL$
// $Date$
// $Author$

// @author@	Buchan <kbuchan@xtra.co.nz>
// @date@	2004-10-18
// @uri@	news:opsf15ngwe44buww@simon.mshome.net
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2126

module dstress.run.length_04;

int main(){
	const int[] array = [1, 2, 3];
	assert((array).length==3);
	return 0;
}
