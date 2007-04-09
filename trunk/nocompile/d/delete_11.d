// $HeadURL$
// $Date$
// $Author$

// @author@	Dave <Dave_member@pathlink.com>
// @date@	2006-02-11
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=6219

module dstress.nocompile.d.delete_11;

void main(){
	int[] a = new int[10];
	int[] b = new int[10];
	delete a, b;
}

