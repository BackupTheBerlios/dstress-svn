// $HeadURL$
// $Date$
// $Author$

// @author@	bobef <bobef@lessequal.com>
// @date@	2006-01-11
// @uri@	news:dsk9hb$ugh$1@digitaldaemon.com

module /*dstress.*/addon.p.private_10_Z;


// foo

public int foo(){
	return 0;
}

private int foo(int i){
	return i + 1;
}


// test

private int test(){
	return 2;
}

public int test(int i){
	return i + 3;
}


// bar

private int bar(int i){
	return i + 4;
}

public int bar(){
	return 5;
}


// check

public int check(int i){
	return i + 6;
}

private int check(){
	return 7;
}
