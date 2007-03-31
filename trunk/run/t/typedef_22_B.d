// $HeadURL$
// $Date$
// $Author$

// @author@	Tomas Lindquist Olsen <tomas@famolsen.dk>
// @date@	2007-03-14
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=1062
// @desc@	[Issue 1062] Cannot catch typedef'd class

module dstress.run.t.typedef_22_B;

typedef Exception TypedefException;

int main(){
	try{
		throw new TypedefException("foo");
	}catch(TypedefException e){
		return 0;
	}

	assert(0);
}
