// $HeadURL$
// $Date$
// $Author$

// @author@	Don Clugston <dac@nospam.com.au>
// @date@	2005-10-27
// @uri@	news:djq89r$1i6e$1@digitaldaemon.com

module dstress.nocompile.t.template_17_A;

template t(int i){
	const int x = t!(i+1).x;
}

void main(){
	int i = t!(0).x;
}
