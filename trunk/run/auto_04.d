// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date@	2004-09-11
// @uri@	news:chtj6t$24bm$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=1821

module dstress.run.auto_04;

int status;

auto class AutoClass{
	this(){
		if(0 != status){
			assert(0);
		}
		status+=2;
	}
	~this(){
		if(2 != status){
			assert(0);
		}
		status--;
		throw new Exception("error msg");
	}
}

void check(){
	auto AutoClass ac = new AutoClass();
	throw new Exception("check error");
}

int main(){
	if(0 != status){ assert(0); }
	try{
		check();
	}catch{
		if(1 != status){ assert(0); }
		status-=5;
	}
	
	if(status==-4){
		return 0;
	}
	assert(0);
}
