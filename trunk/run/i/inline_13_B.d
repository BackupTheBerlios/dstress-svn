// $HeadURL$
// $Date$
// $Author$

// @author@	Uwe Salomon <post@uwesalomon.de>
// @date@	2005-07-13
// @uri@	news:op.studsoj86yjbe6@sandmann.maerchenwald.net

// __DSTRESS_DFLAGS__ -inline

module dstress.run.i.inline_13_B;

struct NodeType(Key, T){
	NodeType* next;
	uint hash;
	Key key;
}

struct HashIterator(Key, T){
	NodeType!(Key, T)* m_ptr;

	static HashIterator fromPtr(NodeType!(Key, T)* ptr){
		return *(cast(HashIterator*) &ptr);
	}

	int opEquals(HashIterator iter){
		return (m_ptr == iter.m_ptr);
	}
}

struct Hash(Key, T){
	alias HashIterator!(Key, T) Iterator;

	Iterator end(){
		return Iterator.fromPtr(null);
	}

}

int main(){
	Hash!(uint, uint) hash;
	hash.Iterator iter;

	if ((iter = hash.end()) == hash.end){
		return 0;
	}

	assert(0);
}