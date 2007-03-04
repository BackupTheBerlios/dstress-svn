// $HeadURL$
// $Date$
// $Author$

// @author@	Daniel Horn <hellcatv@hotmail.com>
// @date@	2004-04-30
// @uri@	news:c6ullo$104s$1@digitaldaemon.com
// @uri@	nntp://digitalmars.com/digitalmars.D.bugs/48

// __DSTRESS_ELINE__ 51

module dstress.nocompile.bug_mtype_3154;

struct vec(VALUE, int size){
	
	enum {nvalues=1}
	
	VALUE [size]f;
	
	VALUE* getAt(uint i) {
		return i<size?&f[i]:&f[size-1];
	}
	
	VALUE opIndexAssign(uint i, VALUE v) {
		return (*getAt(i))=v;
	}

	VALUE opIndexAssign(uint i) {
		return i<size?f[i]:f[size-1];
	}

	template T(zvec) {
		zvec castTo() {
			zvec ret;
			for (int i=max(ret.nvalues-1,size-1);i>=0;i--) {
				ret[i]=this[i];
			}
			return ret;
		}
	}
}

alias vec!(float,1) float1;
alias vec!(float,4) float4;

int main (char[][]args) {
	float1 a;
	float4 b;
	b[0]=1,b[1]=2,b[2]=3,b[3]=4;
	a[1]=3;
	b=a.T(float4).castTo();// <-- taking out this line stops the error

	return 0;
}
