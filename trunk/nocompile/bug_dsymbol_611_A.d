// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-26
// @uri@	news:cqml2m$1ujj$1@digitaldaemon.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/2604

// __DSTRESS_ELINE__ 18

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
