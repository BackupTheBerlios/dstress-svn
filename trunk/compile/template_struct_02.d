// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel Horn <hellcatv@hotmail.com>
// @date@	2004-05-06

struct vec(int size){
	float data[size];
	vec!(1) first(){
		vec!(1) t;
		t.data[0]=data[0];
		return t;
	}
}

