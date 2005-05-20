// $HeadURL$
// $Date$
// $Author$

// @author@	Ben Hinkle <ben.hinkle@gmail.com>
// @date@	2005-05-20
// @uri@	news:d6j9fq$2qdd$1@digitaldaemon.com

module dstress.run.s.struct_initialization_07_B;

struct Node {
	Node* left,right,parent;
	int key;
	int value;
}

int main(){
	Node* x = new Node;
	assert(x.left is null);
	assert(x.right is null);
	assert(x.parent is null);
	assert(x.key == 0);
	assert(x.value == 0);
	return 0;
}
