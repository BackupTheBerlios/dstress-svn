// according to the documentation align can only be applied to struct members

module dstress.nocompile.align_05;

align (2) class MyClass{
	int a;
	byte* b;
	int c(){	
		return 8;
	}
}
