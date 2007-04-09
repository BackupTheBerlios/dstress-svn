// $HeadURL$
// $Date$
// $Author$

// @author@	Kevin Bealer <Kevin_member@pathlink.com>
// @date@	2005-04-24
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3800

module dstress.run.bug_cgcod_1489_D;

class S {
	int a, b, c;
}
    
S[] x;
        
S bug(S s){
	x.length = 9;
	return x[0] = s;
}

int main(){
	S var=new S();
	var.a=2;

	assert(var==bug(var));

	return 0;
}

