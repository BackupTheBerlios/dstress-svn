// $Header: /home/th/Dokumente/Entwicklung/MEIN_CVS/MiniD/src/run/foreach_08.d,v 1.1 2004/09/21 21:04:47 th Exp $


int main(){
	double[dchar[]] array;
	array["eins"]= 1.0;
	array["drei"]= 3.0;
	double test=0.0;
	int count=0;
	assert(count==0);
	foreach(dchar[] index, double obj; array){
		test+=obj;
		count++;
	}
	assert(count==2);
	assert(test==4.0);
	return 0;
}