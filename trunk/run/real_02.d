// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/real_02.d,v 1.1 2004/08/23 19:00:12 th Exp $

int main(){
	real r;
	assert(real.sizeof >= float.sizeof);
	assert(real.sizeof == r.sizeof);
	assert(real.sizeof == typeid(real).tsize());
	return 0;
}
