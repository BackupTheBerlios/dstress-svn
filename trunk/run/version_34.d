// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-04-18
// @uri@	news:d3v03l$2oag$1@digitaldaemon.com

module dstress.run.version_34;

version(b){
	int main(){
		return 0;
	}
}

version = a;

version (a){
	version = b;
}

