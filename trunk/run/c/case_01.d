// $HeadURL$
// $Date$
// $Author$

// @author@	Paul Guerra <Paul_member@pathlink.com>
// @date@	2005-07-29
// @uri@	news:dccg4l$o6a$1@digitaldaemon.com

// this clearly seems illegal but I can't find any rule combination disallowing it

module dstress.run.c.case_01;

int main(){
	int u=2;

	switch(u){
		case 1:
			void j(){
				case 2:
				u++;
			}
		break;
	}
	
	return 0;
}