// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel Horn <hellcatv@hotmail.com>
// @date@	2004-05-01
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=50

module dstress.run.template_01;

template T(int size){
	int vec[size];
}

int main(){
	int a = T!(4>1?4:1).vec[0];
	int b = T!(4==1?1:(1==1?4:(4>1?1:4))).vec[0];
	return 0;
}
