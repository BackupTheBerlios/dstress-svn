// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-02-11
// @uri@	news:cui1u9$1kl1$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2943

module dstress.run.overload_18;

class Parent {
	Parent check(){
		return new Parent;
	}
}

class Sister : Parent {
	Sister check(){
    		return new Sister();
	}
}


int main(){
	Parent p = (new Sister()).check();
	return 0;
}