// $HeadURL$
// $Date$
// $Author$

// @author@	Tim Fang <timfang2006@126.com>
// @date@	2007-01-11
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=829
// @desc@	[Issue 829] struct operator overload returns a wrong value (suspect NRVO bug)

module dstress.run.s.struct_27_C;

struct Vector3{
	float x;

	Vector3 mul(float s){
		Vector3 ret;
		ret.x = x*s;
		return ret;
	}
}

int main(){
	Vector3 a;
	a.x = 1;
	
	a = a.mul(2);

	if(2 == a.x){
		return 0;
	}
	assert(0);
}


