// $HeadURL$
// $Date$
// $Author$

// @author@	Anders F Björklund <afb@algonet.se>
// @date@	2005-03-06
// @uri@	news:d0ek4k$2ko8$2@digitaldaemon.com
// @url@	nntp://news.digitalmars.com/digitalmars.D.bugs/3093

// @WARNING@ depends on Phobos

module dstress.run.OutOfMemory_02;

import std.outofmemory;

int main(){
	try{
		_d_OutOfMemory();
	}catch(Exception e){
		return 0;
	}
	assert(0);
}