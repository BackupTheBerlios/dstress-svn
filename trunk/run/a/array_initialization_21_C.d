// $HeadURL$
// $Date$
// $Author$

// @author@	clayasaurus <clayasaurus@gmail.com>
// @date@	2005-12-25
// @uri@	news:http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=5910

module dstress.run.a.array_initialization_21_C;

const int MAX_PARTICLES = 30000;

struct Particle{
	float a;
	float b;
	float c;
}

Particle particles[MAX_PARTICLES];

int main(){
	if(particles.length != MAX_PARTICLES){
		assert(0);
	}
	return 0;
}
