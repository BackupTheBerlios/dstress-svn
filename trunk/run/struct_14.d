// @author@	shinichiro.h <s31552@mail.ecc.u-tokyo.ac.jp>
// @date@	2004-10-30
// @uri@	news://20041030030623.0497f385.s31552@mail.ecc.u-tokyo.ac.jp
// @url@	nttp://digitalmars.com/digitalmars.D.bugs:2163

module dstress.run.struct_14;

struct MyStruct {
    ubyte a, b, c, d;
}

void check(MyStruct s) {
	assert(s.a==1);
	assert(s.b==2);
	assert(s.c==3);
	assert(s.d==4);
}

int main() {
    for (int i = 0; i < 1; i++) {
        MyStruct s;
        s.a = 1;
        s.b = 2;
        s.c = 3;
        s.d = 4;
        check(s);
    }
    return 0;
}
