// $HeadURL$
// $Date$
// $Author$

// @author@	Mike Swieton <mike@swieton.net>
// @date@	2004-05-27
// @uri@	news:pan.2004.05.27.03.36.49.673273@swieton.net

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
