// $HeadURL$
// $Date$
// $Author$

// @author@	clayasaurus <clayasaurus@gmail.com>
// @date@	2005-12-25
// @uri@	news:donatt$1acv$1@digitaldaemon.com>

module dstress.run.a.array_initialization_21_A;

const int MAX_PARTICLES = 30000;

struct Particle{
	float a;
}

Particle particles[MAX_PARTICLES];

int main(){
	assert(particles.length == MAX_PARTICLES);
	return 0;
}
