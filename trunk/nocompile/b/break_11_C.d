// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2005-08-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4764
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