// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-04-18
// @uri@	news:d3v03l$2oag$1@digitaldaemon.com

module dstress.run.debug_10;

version(c){
	int main(){
		return 0;
	}
}

debug(b){
	version=c;
}

debug (a){
	debug = b;
}

debug = a;
