// $HeadURL$
// $Date$
// $Author$

// @author@	BCS <BCS_member@pathlink.com>
// @date@	2005-08-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4764
// @desc@	labeled breaks and labeled enclosing scopes

// __DSTRESS_ELINE__ 17

module dstress.nocompile.b.break_11_A;

void main(){
	foo:{
		while(true){
			break foo;
		}
	}
}