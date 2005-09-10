// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-09-09
// @uri@	news:dfsni3$2jst$1@digitaldaemon.com

// __DSTRESS_DFLAGS__ -inline

module dstress.run.i.inline_14_B;

int a = 0;
int b = 0;

class A{
        void f(){
                a++;
        }
}

final class B : A{
        void f(){
                b++;
                super.f();
        }
}

int main(){
        (new B).f();
        assert(a==1);
        assert(b==1);
        return 0;
}