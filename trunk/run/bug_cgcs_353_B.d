// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-01-29
// @uri@	news:ctf9mg$1ieg$1@digitaldaemon.com
// @uri@	nntp://news.digitalmars.com/digitalmars.D/15319

module dstress.run.bug_cgcs_353_B;

int main(char[][]args){
	delete args[0..0];
	return 0;
}
