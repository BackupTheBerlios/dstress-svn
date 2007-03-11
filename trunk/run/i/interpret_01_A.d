// $HeadURL$
// $Date$
// $Author$

// @author@	Lionello Lunesu <lio@lunesu.remove.com>
// @date@	2007-02-16
// @uri@	http://www.digitalmars.com/webnews/newsgroups.php?group=digitalmars.D&article_id=48917
// @desc@	Re: Compile time function execution...

module dstress.run.i.interpret_01_A;

template eval(A...) {
	alias A eval;
}

char[] trimfirst(char[] s){
        int x = 0;
        foreach (char each; s) {
                if (each != ' ')
                        return s[x .. $];
                x++;
        }
        return s;
}

int main(){
	char[] a = eval!(trimfirst(" test"))[0];
	if(a != "test"){
		assert(0);
	}
	return 0;
}
