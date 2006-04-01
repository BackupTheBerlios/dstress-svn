// $HeadURL$
// $Date$
// $Author$

// @author@	<nail-mail@mail.ru>
// @date@	2006-03-26
// @uri@	bug-75-3@http.d.puremagic.com/bugzilla/

module complex.unittest_09.a;

struct Dummy{
}

struct TemplatedStruct(Param){
	static real f = 0.0L;
}

unittest{
	alias TemplatedStruct!(Dummy) X;        
}
