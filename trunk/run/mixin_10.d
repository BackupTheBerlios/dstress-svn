// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-17
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3195

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

