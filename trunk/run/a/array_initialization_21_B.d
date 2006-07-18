// $HeadURL$
// $Date$
// $Author$

// @author@	clayasaurus <clayasaurus@gmail.com>
// @date@	2005-12-25
// @uri@	news:donatt$1acv$1@digitaldaemon.com>

module dstress.run.a.array_initialization_21_B;

const int MAX_PARTICLES = 30000;

struct Particle{
	float a;
	float b;
}

Particle particles[MAX_PARTICLES];

int main(){
	if(particles.length != MAX_PARTICLES){
		assert(0);
	}
	return 0;
}
