// according to the documentation align can only be applied to struct members
module dstress.nocompile.align_01;

align (1) int check(){
	return 5;
}
