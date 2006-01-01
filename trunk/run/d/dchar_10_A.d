// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.d.dchar_10_A;

int main(){
	dchar[] string = "\uDBC4\uDD11";

	assert(string.length == 1);

	if(string[0] == 0x101111){
		return 0;
	}
}
