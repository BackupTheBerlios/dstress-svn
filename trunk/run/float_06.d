// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/float_06.d,v 1.1 2004/08/23 18:28:08 th Exp $

int main(){
	float f;
	assert(float.epsilon > 0);
	assert(float.epsilon < 0.00001);
	assert(float.epsilon > double.epsilon);
	assert(float.epsilon == f.epsilon);
	assert(float.epsilon == (4.2f).epsilon);
	return 0;
}
