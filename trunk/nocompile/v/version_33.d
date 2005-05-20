// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-04-18
// @uri@	news:d3v03l$2oag$1@digitaldaemon.com

// __DSTRESS_ELINE__ 23

module dstress.nocompile.v.version_33;

version(b){
	int main(){
		return 0;
	}
}

version (a){
	version = b;
}

version = a;

