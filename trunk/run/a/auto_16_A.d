// $HeadURL$
// $Date$
// $Author$

// @author@	yama <yama_member@pathlink.com>
// @date@	2006-02-26
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6373

module dstress.run.a.auto_16_A;

class C{
	string toString(){
		return "hallo bug";
	}
}

int main(){
	auto C c;
	version(all){
		c = new C();
	}

	if(c.toString() != "hallo bug"){
		assert(0);
	}

	return 0;
}



