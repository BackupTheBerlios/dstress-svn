// $HeadURL$
// $Date$
// $Author$

// @author@	Buchan <kbuchan@xtra.co.nz>
// @date@	2004-10-16
// @uri@	news:opsfwrktdm44buww@simon.mshome.net
// @url@	nntp://digitalmars.com digitalmars.D.bugs/2114

// __DSTRESS_ELINE__ 17

module dstress.nocompile.bug_mtype_2576_B;

const char[] B = ['A'];

int main(){
	cast(B)1;
	return 0;
}
