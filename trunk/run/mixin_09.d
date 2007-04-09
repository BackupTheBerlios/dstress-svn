// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3195

module dstress.run.mixin_09;

void dummy(...){
}

class A {
        template ctor(Type)
        {
                this(Type[] arr)
                {
                        foreach(Type v; arr) dummy(typeid(typeof(v)));
                }
        }

        mixin ctor!(int);
}

int main(){
	static int[] ints = [0,1,2,3];
	A a = new A(ints);
	return 0;
}

