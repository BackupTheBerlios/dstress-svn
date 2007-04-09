// $HeadURL$
// $Date$
// $Author$

// @author@	Regan Heath <regan@netwin.co.nz>
// @date@	2004-06-10
// @uri@	news:opr9c6ny1b5a2sq9@digitalmars.com
// @uri@	http://www.digitalmars.com/pnews/read.php?server=news.digitalmars.com&group=digitalmars.D.bugs&artnum=438

// __DSTRESS_ELINE__ 21

module dstress.nocompile.bug_cgcs_353;

struct Bug {
	ubyte[64] buffer;

	void fn(ubyte[] input){
		uint i;

		i = 64-buffer.length;
		buffer[] ~= input[0..i];		
	}
}

