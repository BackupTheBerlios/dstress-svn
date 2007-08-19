// $HeadURL$
// $Date$
// $Author$

// @author@	kinghajj <kinghajj_member@pathlink.com>
// @date@	2004-10-03
// @uri@	news:cm98hu$e30$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D/12248

module dstress.run.bug_20041103_A;

char rot13_c(char ret){
	if(ret > 'A'-1 && ret < 'N'){
		ret += 13;
	}else if(ret > 'M' && ret < 'Z'+1){
		ret -= 13;
	}else if(ret > 'a'-1 && ret < 'n'){
		ret += 13;
	}else if(ret > 'm' && ret < 'z'+1){
		ret -= 13;
	}
	return ret;
}

int main(){
	char c = rot13_c('A');
	if('A'+13 != c){
		assert(0); 
	}
	return 0;
}
