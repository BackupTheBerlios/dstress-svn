// $HeadURL$
// $Date$
// $Author$

// __DSTRESS_ELINE__ 14

module dstress.nocompile.alias_05;

alias int myint;

void foo(int x) {
}

void foo(myint m) { // error, multiply defined function foo
}
