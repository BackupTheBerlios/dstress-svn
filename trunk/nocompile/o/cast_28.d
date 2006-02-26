// $HeadURL$
// $Date$
// $Author$

// @author@	kenny <funisher@gmail.com>
// @date@	2005-07-17
// @uri@	news:dbcphe$2s0d$1@digitaldaemon.com

module dstress.nocompile.o.cast_28;

void main(){
	char[] data;
	bool* pData;

	pData = &cast(bool*) data;
} 
