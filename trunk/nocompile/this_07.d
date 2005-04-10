// $HeadURL$
// $Date$
// $Author$

// @author@	Benjamin Herr
// @date@	2005-04-09

// __DSTRESS_ELINE__  25

module dstress.nocompile.this_07;

class Foo {
        this(int i) {
                this.i = i;
        }
 
        void f() {
              assert(i);
        }
 
        int i;
}
 
int main() {
        void function() fg = &Foo.f;
 
        fg();
 
        return 0;
}
