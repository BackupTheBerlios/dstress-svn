// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2005-03-27
// @uri@	news:d26pug$2m4m$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -O -inline

module dstress.run.bug_cg87_279_A;

float x;
    
void foo(){
	x = -x;
}

void bar(){
	return foo();
}

int main(){
	x=2;
	bar();
	assert(x==-2);
	return 0;
} 