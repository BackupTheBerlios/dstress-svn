// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-02-03
// @uri@	news:ctth2h$1ai$1@digitaldaemon.com

module dstress.run.bug_expression_661_B;

int main(){
	return cast(int)(.0>>0);
} 
