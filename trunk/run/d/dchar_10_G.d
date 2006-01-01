// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.d.dchar_10_G;

int main(){
	const dchar[] string = "\uDBC4\uDD11"d;

	static assert(string.length == 1);

	static if(string[0] == 0x101111){
		return 0;
	}
}
