// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-02-11
// @uri@	news:cui1u9$1kl1$1@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/2943

module dstress.run.overload_17;

class Parent {
	Parent check(){
		return new Parent;
	}
}

class Sister : Parent {
	Brother check(){
    		return new Brother;
	}
}

class Brother : Parent {
}

int main(){
	Parent p = (new Sister()).check();
	return 0;
}