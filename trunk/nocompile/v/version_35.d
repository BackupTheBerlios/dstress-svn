// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-04-18
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3701

// __DSTRESS_ELINE__ 27

module dstress.nocompile.v.version_35;

debug(c){
	int main(){
		return 0;
	}
}

version(b){
	debug=c;
}

version(a){
	version= b;
}

version = a;
