// $HeadURL$
// $Date$
// $Author$

// @author@	Lars Ivar Igesund <larsivar@igesund.net>
// @date@	2005-02-22
// @uri@	news:cvg5mn$19lb$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3035

module dstress.nocompile.bug_template_1455_A;

class Foo(T) {
}

class Bar : Foo!(Nothing){
} 