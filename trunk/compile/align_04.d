// $HeadURL$
// $Date$
// $Author$

module dstress.compile.align_04;

align (2) struct MyStruct{
	int a;
	byte* b;
	int c(){	
		return 8;
	}
}
