// $HeadURL$
// $Date$
// $Author$

// @author@	nail <nail_member@pathlink.com>
// @date@	2005-02-06
// @uri@	news:cu5ghl$1cpd$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -inline

module dstress.compile.inline_03;

struct Struct{

	static Struct bug(){
		Struct mat;
		
		with (mat){
		}
		
		return mat;
	}

	static Struct check(){
		Struct a;
		return Struct.bug() * a;
	}

	Struct opMul(Struct mat){
		return mat;
	}
}

