// this is illegal otherwise 1..0 would be interpeted as 1.0
module dstress.nocompile.float_literal_dec_09;

int main(){
	float f = .0 ;
	return 0;
}
