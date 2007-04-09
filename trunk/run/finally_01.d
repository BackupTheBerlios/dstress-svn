// $HeadURL$
// $Date$
// $Author$

// @author@	Sean Kelly <sean@f4.ca>
// @date	2004-11-16
// @uri@	news:cndnk4$17ld$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2283

module dstress.run.finally_01;

int main(){
	int status=0;
	try{
		try{
			status++;
			assert(status==1);
			throw new Exception("first");
		}finally{
			status++;
			assert(status==2);
			status++;
			throw new Exception("second");
		}
	}catch(Exception e){
		assert(status==3);
	}
	return 0;
}
