// $HeadURL$
// $Date$
// $Author$

// @author@	Tom S <h3r3tic@remove.mat.uni.torun.pl>
// @date@	2005-03-27
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=3363

module dstress.run.bug_cg87_2393_A;

creal x;
    
void foo(){
	x = -x;
}

void bar(){
	return foo();
}

int main(){
	x = 2.0L + 0.0Li;
	bar();
	if(-2.0L + 0.0Li != x){
		assert(0);
	}
	return 0;
} 
