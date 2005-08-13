// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2005-08-11
// @uri@	news:ddfsnp$eit$1@digitaldaemon.com
// @desc@	labeled breaks and labeled enclosing scopes

// __DSTRESS_ELINE__ 18

module dstress.nocompile.b.break_11_C;

void main(){
	foo:{
		switch(1){
			default:{
				break foo;
			}
		}
	}
}