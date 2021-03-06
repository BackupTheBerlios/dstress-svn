// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-26
// @uri@	news:cqml2m$1ujj$1@digitaldaemon.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=2604

// __DSTRESS_ELINE__ 21

module dstress.nocompile.bug_dsymbol_611_A;

interface INode{
	INode owner();
}

class BasicNode : INode{
	INode findNode(){
		foreach(INode c ; m_children){
			if(c.owner != this)
				continue;
			return null;
		}
	}

	INode[] m_children;
}
