// $HeadURL$
// $Date$
// $Author$

// @author@	Mike Swieton <mike@swieton.net>
// @date@	2004-05-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=296

module dstress.run.for_02;

int main(){
	int status=1;
	assert(status==1);
	for(;;){
		status++;
		if(status==3){
			break;
		}
	}
	assert(status==3);
	return 0;
}
