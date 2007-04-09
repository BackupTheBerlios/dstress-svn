// $HeadURL$
// $Date$
// $Author$

// @author@	David L. Davis <SpottedTiger@yahoo.com>
// @date@	2005-06-16
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4337
// @desc@	ignored attributes of imported alias

// __DSTRESS_DFLAGS__ addon/alias_25_Z.d

module dstress.nocompile.a.alias_25_D;
import addon.alias_25_Z;

int main(){
	if(i != 0){
		assert(0);
	}
	iPublic++;
	if(i != 1){
		assert(0);
	}
	return 0;
}
