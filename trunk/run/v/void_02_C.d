// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-08-16
// @uri@	news:ddtark$os1$1@digitaldaemon.com

module dstress.run.v.void_02_C;

void[10] array = void;

int main(){
	if(array.length != 10){
		assert(0);
	}
	return 0;
}
