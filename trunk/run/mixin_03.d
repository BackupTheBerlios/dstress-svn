// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/mixin_03.d,v 1.1 2004/09/23 05:56:47 th Exp $

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-05-20

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
