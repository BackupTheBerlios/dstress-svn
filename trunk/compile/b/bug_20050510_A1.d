// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-10
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3943

module /+dstress.+/compile.b.bug_20050510_A1;

struct TC(T){
	void method(){
		void inline_function(){
		}
	}
}

template TB(T){
	alias TC!(T) tc_instance;
}

struct TA(T){
	mixin TB!(T);
}

