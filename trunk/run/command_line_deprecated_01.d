// __DSTRESS_DFLAGS__ -d

module stress.run.command_line_deprecated_01;

int main(){
	int[7] array;
	assert(array.size == array.sizeof);
	return 0;
}
