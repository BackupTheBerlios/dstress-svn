// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/array_initialization_01.d,v 1.1 2004/08/20 23:42:51 th Exp $

// @author@ 	Drew McCormack <drewmccormack@mac.com>
// @date@	2004-04-29
// @uri@	news://c6qbes$8fg$1@digitaldaemon.com

int main(){
	int[2] i = [5, 13];
	assert(i.length == 2);
	assert(i[0] == 5);
	assert(i[1] == 13);
	return 0;
}
