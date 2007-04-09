// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-01-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6224

// __DSTRESS_DFLAGS__ addon/private_10_Z.d

module dstress.run.p.private_10_C;

import addon.private_10_Z;


int main(){
	if(bar() == 5){
		return 0;
	}
}
