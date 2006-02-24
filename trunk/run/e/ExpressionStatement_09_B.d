// $HeadURL$
// $Date$
// $Author$

// @author@	Bruno Medeiros <daiphoenixNO@SPAMlycos.com>
// @date@	2006-01-06
// @uri@	news:dpud2c$5ch$1@digitaldaemon.com


module dstress.run.e.ExpressionStatement_09_B;

int status;

void func() {
	status++;
}

int main(){
	func, func();
	if(status == 2){
		return 0;
	}
}
