// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-04-18
// @uri@	news:d3v03l$2oag$1@digitaldaemon.com

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
