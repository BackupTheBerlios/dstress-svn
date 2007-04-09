// $HeadURL$
// $Date$
// $Author$

// @author@	clayasaurus <clayasaurus@gmail.com>
// @date@	2005-12-25
// @uri@	news:http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5910

module dstress.run.a.array_initialization_21_E;

const int MAX_PARTICLES = 20000;

struct Particle{
	float a;
	float b;
	float c;
	float d;
}

Particle particles[MAX_PARTICLES];

int main(){
	if(particles.length != MAX_PARTICLES){
		assert(0);
	}
	return 0;
}
