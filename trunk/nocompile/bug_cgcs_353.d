// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-06-10
// @uri@	news:opr9c6ny1b5a2sq9@digitalmars.com
// @url@	nntp://digitalmars.com/digitalmars.D.bugs/438

module dstress.nocompile.bug_cgcs_353;

struct Bug {
	ubyte[64] buffer;

	void fn(ubyte[] input){
		uint i;

		i = 64-buffer.length;
		buffer[] ~= input[0..i];		
	}
}

