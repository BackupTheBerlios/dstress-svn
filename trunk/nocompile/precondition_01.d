// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/nocompile/precondition_01.d,v 1.1 2004/09/23 06:37:31 th Exp $

// @author@	Arcane Jill <Arcane_member@pathlink.com
// @date@	2004-08-23

int test(int x)
in{
	assert(x==2);	
};

int main(){
	int i =test(2);
	return 0;
}
