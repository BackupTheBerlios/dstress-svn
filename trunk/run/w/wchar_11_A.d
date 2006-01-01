// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.c.wchar_11_A;

int main(){
	wchar[] string = "\uDBC4\uDD11";

	assert(string.length == 2);

	if(string[0] == 0xDBC4 && string[1] == 0xDD11){
		return 0;
	}
}
