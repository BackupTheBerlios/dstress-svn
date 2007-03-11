// $HeadURL$
// $Date$
// $Author$

// @author@	Bill Baxter <dnewsgroup@billbaxter.com>
// @date@	2007-02-16
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?group=digitalmars.D&article_id=48869
// @desc@	Re: Compile time function execution...

module dstress.run.c.const_45_A;

char[] UpToSpace(char[] x){
     int i=0;
     while (i<x.length && x[i] != ' ') {
         i++;
     }
     return x[0..i];
}

int main(){
	const y = UpToSpace("first space was after first");
	if("first" != y){
		assert(0);
	}
	return 0;
}

