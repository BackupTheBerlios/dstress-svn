// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2005-03-20
// @uri@	news:d1kc3u$ubc$1@digitaldaemon.com

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
