// according to the documentation align can only be applied to struct members
module dstress.nocompile.align_03;

align (1) struct MyStruct{
	int a;
	byte* b;
	int c();
}
