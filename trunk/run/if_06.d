// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/if_06.d,v 1.1 2004/09/22 07:39:36 th Exp $

// @author@	Burton Radons <burton-radons@shaw.ca>
// @date@	2004-09-19

int main(){
	int x=1;
	assert(x==1);
	if(x)
		version(none)
			x++;
	assert(x==1);
	return 0;
}
