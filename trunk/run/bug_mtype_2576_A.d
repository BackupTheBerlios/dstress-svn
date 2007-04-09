// $HeadURL$
// $Date$
// $Author$

// @author@	J Anderson <REMOVEanderson@badmama.com.au>
// @date@	2004-05-18
// @uri@	news:c8c0uk$229r$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=205

module dstress.run.bug_mtype_2576_A;

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

