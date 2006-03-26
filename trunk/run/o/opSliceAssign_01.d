// $HeadURL$
// $Date$
// $Author$

// @author@	Stewart Gordon <smjg_1998@yahoo.com>
// @date@	2005-12-12
// @uri@	news:dnjnqe$16sv$1@digitaldaemon.com

module dstress.run.o.opSliceAssign_01;

int main() {
	int[] piece = new int[6];
	int[] item;

	item = piece[2..5] = 3;
	assert (item is piece[2..5]);

	piece[3] = 5;

	assert (piece[0] == 0);
	assert (piece[1] == 0);
	assert (piece[2] == 3);
	assert (piece[3] == 5);
	assert (piece[4] == 3);
	assert (piece[5] == 0);
	assert (item.length == 3);

	assert (item[0] == 3);
	assert (item[1] == 5);
	assert (item[2] == 3);

	return 0;
}
