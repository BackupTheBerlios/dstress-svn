// $HeadURL$
// $Date$
// $Author$

// @author@	James Dunne <james.jdunne@gmail.com>
// @date@	2005-08-28
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4882

module dstress.run.b.bug_cgcs_353_F3;

int main(){
	int[] foos;

	if(foos.length != 0){
		assert(0);
	}

	foos = 3 ~ foos[];

	if(foos.length != 1){
		assert(0);
	}

	return 0;
}
