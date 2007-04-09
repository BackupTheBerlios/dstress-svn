// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-06-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4337
// @desc@	ignored attributes of imported alias

// __DSTRESS_ELINE__ 18

module dstress.nocompile.a.alias_25_A;

import addon.alias_25_Z;

void main(){
	iPublic++;
	iPrivate++;
}
