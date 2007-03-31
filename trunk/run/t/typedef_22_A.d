// $HeadURL$
// $Date$
// $Author$

// @author@	Tomas Lindquist Olsen <tomas@famolsen.dk>
// @date@	2007-03-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1062
// @desc@	[Issue 1062] Cannot catch typedef'd class

module dstress.run.t.typedef_22_A;

typedef Exception TypedefException;

int main(){
	try{
	}catch(TypedefException e){
		assert(0);
	}

	return 0;
}
