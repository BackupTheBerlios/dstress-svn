// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2005-03-19
// @uri@	news:opsnvajfcb23k2f5@nrage.netwin.co.nz

module dstress.run.init_03;

int main(){
        static int[4] array2 = [5,6,7,8];
        TypeInfo i = typeid(typeof(array2.init));
	assert(!(i is null));
	return 0;
}

