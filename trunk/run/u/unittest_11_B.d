// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel (Zuu) <dkm4i1@gmail.com>
// @date@	2007-02-03
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=928
// @desc@	[Issue 928] nested struct definition in unittest section of a templated class, hangs DMD

module dstress.run.u.unittest_11_B;

struct TestType {
}

class MinHeap(NodeType){
	unittest{
		MinHeap!(TestType) foo = new MinHeap!(TestType)();
	}
}

int main(){
	MinHeap!(int) foo = new MinHeap!(int)();
	return 0;
}
