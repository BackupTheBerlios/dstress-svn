// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-17
// @uri@	news:opsnp8x0v923k2f5@nrage.netwin.co.nz

module dstress.run.mixin_10;

void writefln(...){
}

class A {
        template ctor(Type)
        {
                this(Type[] arr)
                {
                        foreach(Type v; arr)
                        {
                        	writefln("%s", typeid(typeof(v)));
                        }
                }
        }

        mixin ctor!(int);
	mixin ctor!(Object);
}

int main(){
	static int[] ints = [0,1,2,3];
	A a = new A(ints);
	return 0;
}

