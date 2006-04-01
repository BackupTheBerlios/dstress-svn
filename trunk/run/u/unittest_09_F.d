// $HeadURL$
// $Date$
// $Author$

// @author@	<nail-mail@mail.ru>
// @date@	2006-03-26
// @uri@	bug-75-3@http.d.puremagic.com/bugzilla/

module dstress.run.u.unittest_09_F;

struct Dummy{
}

struct TemplatedStruct(Param){
	static real f = 0.0L;
}

unittest{
	alias TemplatedStruct!(Dummy) X;        
}

int main(){
        TemplatedStruct!(Dummy) e;

        return 0;
}

