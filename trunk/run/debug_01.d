// __DSTRESS_DFLAGS__ -debug

module dstress.run.debug_01;

int main(){
	int x;
	assert(x==0);
	debug{
		x++;
	}
	assert(x==1);
	return 0;
}
