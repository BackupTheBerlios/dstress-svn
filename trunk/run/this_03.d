// $HeadURL$
// $Date$
// $Author$

// @author@	Jarrett Billingsley <kb3ctd2@yahoo.com>
// @date@	2004-12-30
// @uri@	news:cr19ka$q75$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D/14115

module dstress.run.this_03;

class Node{
	static Node[Node] nodes;
	
	this(){
		nodes[this]=this;
	}
	
	~this(){
		delete nodes[this];
	}
}

int main(){
	assert(Node.nodes.length==0);
	Node n = new Node();
	assert(Node.nodes.length==1);
	return 0;
}