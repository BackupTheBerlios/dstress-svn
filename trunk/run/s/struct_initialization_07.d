// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-05-20
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=4080

module dstress.run.s.struct_initialization_07;

struct Node {
	Node* left,right,parent;
	int color;
	char[] key;
	char[] value;
}

int main(){
	Node* x = new Node;
	assert(x.left is null);
	assert(x.right is null);
	assert(x.parent is null);
	assert(x.key.length == 0);
	assert(x.value.length == 0);
	return 0;
}
