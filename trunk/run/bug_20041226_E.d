// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-26
// @uri@	news:cqmufn$26oj$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2606

// __DSTRESS_DFLAGS__ -inline

module dstress.run.bug_20041226_E;

void dummy(...){
}

struct vec3{
	vec3 opSub(vec3 a){
		vec3 x;
		return x;
	}
}

struct Face{
	vec3	a;
}

struct Mesh{
	Face[]	faces;
}
	
struct GeomObject{
	Mesh	mesh;
	char[]	name;
	vec3		xlate;
}

class AseLoader{
	this(){
		GeomObject go;
		go.name = "NODE";
		geomObjects ~= go;
	}
	
	GeomObject[]	geomObjects;
}


void extractTriangles(GeomObject geomObj){
	void foobar(){
		try{
			dummy("name: ", geomObj.name);

			return;
		}catch(Object err){
			throw err;
		}
	}
	
	foobar();
}

int main(){
	try{
		AseLoader al = new AseLoader;
	
		foreach(GeomObject go; al.geomObjects){
			dummy("processing ", go.name);
			extractTriangles(go);
		}
	}catch(Object err){
		dummy("Exception caught:", err);
	}
	
	return 0;
}

