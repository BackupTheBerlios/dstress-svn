// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/odd_bug_01.d,v 1.2 2004/08/23 18:28:08 th Exp $

// @author@	Paul Runde <prunde@consolidated.net>
// @date@	2004-06-02
// @uri@	news://c9jcpq$1fu$1@digitaldaemon.com

int[2] x = 3;
float y = 0.0f;

int main(){
	assert(x[0]==3);
	assert(x[1]==3);
	y = -100;
	assert(x[0]==3);
	assert(x[1]==3);
	return 0;
}
