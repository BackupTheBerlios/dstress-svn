// $HeadURL$
// $Date$
// $Author$

// @author@	Burton Radons <burton-radons@smocky.com>
// @date@	2005-05-10
// @uri@	news:d5s3cd$7tn$1@digitaldaemon.com

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

