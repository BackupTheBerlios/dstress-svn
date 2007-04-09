// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-04-08
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3567

module dstress.run.bug_tocsym_217_03;

class A{
	~this(){
	}
}

int main(){
	A a = new A();

	try{
	}catch(Exception e){ 
		try{
			assert(e);
		}catch{
		}
	}
	
	return 0;
}


