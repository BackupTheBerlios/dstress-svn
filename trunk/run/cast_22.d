// $HeadURL$
// $Date$
// $Author$

// @author@	zwang <nehzgnaw@gmail.com>
// @date@	2005-03-07
// @uri@	news:d0hio7$2bs6$1@digitaldaemon.com

module dstress.run.cast_22;

uint f(){
        uint r;
        uint* p = cast(uint*)&r;
        *p = 1;
        return r;
}

uint g(){
        uint r;
        int* p = cast(int*)&r;
        *p = 1;
        return r;
}

int main(){
        assert(f()==1);
        assert(g()==1);
	return 0;
}
