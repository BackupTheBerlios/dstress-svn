// $HeadURL$
// $Date$
// $Author$

// @author@	Ivan Senji <ivan.senji@public.srce.hr>
// @date@	2004-05-06

module dstress.run.template_struct_01;

struct vec(int size){
	float data[size];
	.vec!(1) first(){
		.vec!(1) t;
		t.data[0]=data[0];
		return t;
	}
}

int main(){
	vec!(2) v;
	assert(v.data.length==2);
	v.data[0]='A';
	v.data[1]='B';
	
	vec!(1) g = v.first();
	assert(g.data.length==1);
	assert(g.data[0]=='A');

	return 0;
}
