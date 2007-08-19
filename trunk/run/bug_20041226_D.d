// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-26
// @uri@	news:cqmufn$26oj$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2606

module dstress.run.bug_20041226_D;

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
	string	name;
	vec3	xlate;
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
		dummy("name: ", geomObj.name);

		return;  // avoid accessing the array with 0 elements in the next line			
		geomObj.mesh.faces[0].a - geomObj.xlate;  // when this line is removed, the bug doesn't appear
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

