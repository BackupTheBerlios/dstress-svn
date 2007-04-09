// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2005-03-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3283

module dstress.run.interface_12;

interface IParent{
}

interface IChild : IParent{
}

class MyClass : IChild{
}

void main(){
        IChild b = new MyClass();
	Object o = cast(Object)b;
	return 0;
}
