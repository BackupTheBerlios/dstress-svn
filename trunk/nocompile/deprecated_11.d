module dstress.nocompile.deprecated_11;

int a = 2;
deprecated alias a b;

int main(){
	return b;
}
