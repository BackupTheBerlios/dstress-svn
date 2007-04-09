// $HeadURL$
// $Date$
// $Author$

// @author@	Nick <Nick_member@pathlink.com>
// @date@	2005-05-25
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4161
// @desc@	Internal error: ../ztc/evalu8.c 174

module dstress.run.b.bug_evalu8_174_E;

void foo(){
	cdouble[] a;
	cdouble[] b;
	foreach(cdouble d; b){
		d = a[0];
	}
}

int main(){
	foo();
	return 0;
}

