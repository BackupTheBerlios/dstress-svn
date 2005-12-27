// $HeadURL$
// $Date$
// $Author$

// @author@	clayasaurus <clayasaurus@gmail.com>
// @date@	2005-12-25
// @uri@	news:donatt$1acv$1@digitaldaemon.com>

module dstress.run.a.array_initialization_21_F;

const int MAX_PARTICLES = 10000;

struct Particle{
	float a;
	float b;
	float c;
	float d;
}

Particle particles[MAX_PARTICLES];

int main(){
	assert(particles.length == MAX_PARTICLES);
	return 0;
}
