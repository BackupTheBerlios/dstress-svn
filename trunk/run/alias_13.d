// $HeadURL$
// $Date$
// $Author$

// @author@	Thomas Kuehne <thomas@kuehne.thisisspam.cn>
// @date@	2005-01-22
// @uri@	news:csu1gv$see$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2737

module dstress.run.alias_13;

int status;

class Check{
	void sum(byte[] b){
		status++;
	}

	void add(byte b){
		assert(0);
	}	

	alias sum write;
	alias add write;
	
	void test(){
		byte[] buffer;
		write(buffer);
	}
}


int main(){
	Check c = new Check();
	status=0;
	assert(status==0);
	c.test();
	assert(status==1);
	return 0;
}