// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2005-03-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3363

module dstress.run.bug_cg87_279_E;

ifloat x;
    
void foo(){
	x = -x;
}

void bar(){
	return foo();
}

int main(){
	x=2i;
	bar();
	if(-2i != x){
		assert(0);
	}
	return 0;
} 
