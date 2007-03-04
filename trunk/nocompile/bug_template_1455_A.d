// $HeadURL$
// $Date$
// $Author$

// @author@	Lars Ivar Igesund <larsivar@igesund.net>
// @date@	2005-02-22
// @uri@	news:cvg5mn$19lb$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3035

// __DSTRESS_ELINE__ 17

module dstress.nocompile.bug_template_1455_A;

class Foo(T) {
}

class Bar : Foo!(Nothing){
} 