// $HeadURL$
// $Date$
// $Author$

// @author@	h3r3tic <foo@bar.baz>
// @date@	2004-12-26
// @uri@	news:cqml2m$1ujj$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/2604

module dstress.compile.bug_dsymbol_611_C;

interface INode{
	INode owner();
}

class BasicNode : INode{
	INode findNode(){
		foreach(INode c ; m_children){
			if(!(c.owner is this))
				continue;
			return null;
		}
	}
	
	INode owner(){
		return this;
	}

	INode[] m_children;
}
