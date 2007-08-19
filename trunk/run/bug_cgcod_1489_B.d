// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-04-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3800

module dstress.run.bug_cgcod_1489_B;

struct S {
	int a, b;
}
    
S[] x;
        
S bug(S s){
	x.length = 9;
	return x[0] = s;
}

int main(){
	S var;
	var.a=2;

	if(bug(var) != var){
		assert(0);
	}

	return 0;
}

