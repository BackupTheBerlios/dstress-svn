// $HeadURL$
// $Date$
// $Author$

// @author@	J Anderson <REMOVEanderson@badmama.com.au>
// @date@	2004-05-18
// @uri@	news:c8c0uk$229r$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/205

module dstress.run.bug_mtype_2576;

struct Standard
{
   
    struct NodeLeaf(NodeInfo, LeafInfo)
    {
        struct Node
        {
            NodeInfo info;
        }
       
        struct Leaf
        {
            LeafInfo info;
        }
       
    }
   
}

struct NodeInfo {  }
struct LeafInfo {  }

alias Standard.NodeLeaf!(NodeInfo, LeafInfo).Node Node;

int main( char[][] args ){
    return 0;
}

