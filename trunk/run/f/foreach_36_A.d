// $HeadURL$
// $Date$
// $Author$

// @author@	Serg Kovrov <reg4dyh@inbox.lv>
// @date@	2006-07-30	
// @uri@	http://d.puremagic.com/issues/show_bug.cgi?id=272
// @desc@	[Issue 272] foreach inside anonymous function crashes dmd.exe

module destress.run.f.foreach_36_A;

alias void function(char[][int]) FN;

int status;

int main(){
	FN fn = function(char[][int] aarray){
		int count;
		
		foreach (int key, char[] element; aarray){
			if(key != 6){
				assert(0);
			}
			if(element != "a"){
				assert(0);
			}
			status++;
		}
	};

	char[][int] aarray;
	aarray[6] = "a";

	status = 0;

	fn(aarray);

	if(status != 1){
		assert(0);
	}

	return 0;
}
