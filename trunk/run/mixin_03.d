// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-05-20

module dstress.run.mixin_03;

template Point(){
	real x, y;
}

class DoublePoint{
	mixin Point A;
	mixin Point B;
}

int main(){
	DoublePoint object = new DoublePoint();
	object.A.x = 2;
	assert(object.A.x == 2);
	return 0;
}
