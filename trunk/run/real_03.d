// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_03.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;

	assert(real.alignof >= float.alignof);
	assert(real.alignof >= real.sizeof);
	assert(real.alignof == r.alignof);

	return 0;
}
