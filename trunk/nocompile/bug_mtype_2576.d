// $HeadURL$
// $Date$
// $Author$

// @author@	Buchan <kbuchan@xtra.co.nz>
// @date@	2004-10-16
// @uri@	news:opsfwrktdm44buww@simon.mshome.net
// @url@	nntp://digitalmars.com digitalmars.D.bugs/2114

module dstress.nocompile.bug_mtype_2576;

const char[] B = ['A'];

int main(){
	cast(B)1;
	return 0;
}
