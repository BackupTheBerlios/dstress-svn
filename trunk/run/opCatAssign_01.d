// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/opCatAssign_01.d,v 1.2 2004/09/23 04:40:47 th Exp $

int main(){
	char[] string;
	string ~= "abc";
	assert(string.length==3);
	return 0;
}
