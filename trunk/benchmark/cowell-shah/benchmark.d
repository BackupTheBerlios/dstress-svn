/* All code Copyright 2004 Christopher W. Cowell-Shah */

// C source: http://www.ocf.berkeley.edu/~cowell/research/benchmark/code/Benchmark.c
// D port: svn://svn.kuehne.cn/dstress/benchmark/cowell-shah/benchmark.d

import std.c.time;
import std.math;
import std.c.stdio;

// handle a bug in Phobos (dmd-0.105)
version(Windows){
        const double CLOCKS_PER_SEC = std.c.time.CLOCKS_PER_SEC;
}else{
        const double CLOCKS_PER_SEC = 1000000.0;
}

int main()
{
	int intMax =            1000000000; // 1B
	double doubleMin =      10000000000.0; // 10B
	double doubleMax =      11000000000.0; // 11B
	long longMin = 		10000000000L; // 10B
	long longMax = 		11000000000L; // 11B
	double trigMax =        10000000; // 10M
	int ioMax =             1000000; // 1M


	printf("Start D benchmark\n");

	long intArithmeticTime = cast(long)intArithmetic(intMax);
	long doubleArithmeticTime = cast(long)doubleArithmetic(doubleMin, doubleMax);
	long longArithmeticTime = cast(long)longArithmetic(longMin, longMax);
	long trigTime = cast(long)trig(trigMax);
	long ioTime = cast(long)io(ioMax); 
	long totalTime = intArithmeticTime + doubleArithmeticTime + longArithmeticTime + trigTime + ioTime ;
	printf("Total elapsed time: %d ms\n", totalTime);

	printf("Stop D benchmark\n");
	return 0;
}


double intArithmetic(int intMax)
{
	double elapsedTime;
	clock_t stopTime;
	clock_t startTime = clock();

	int intResult = 1;
	int i = 1;
	while (i < intMax)
	{
		intResult -= i++;
		intResult *= i++;
		intResult += i++;
		intResult /= i++;
	}

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / cast(double) 1000.0);
	printf("Int arithmetic elapsed time: %1.0f ms with intMax of %ld\n", elapsedTime, intMax);
	printf(" i: %d\n", i);
	printf(" intResult: %d\n", intResult);
	return elapsedTime;
}


double doubleArithmetic(double doubleMin, double doubleMax)
{
	double elapsedTime;
	clock_t stopTime;
	clock_t startTime = clock();

	double doubleResult = doubleMin;
	double i = doubleMin;
	while (i < doubleMax)
	{
		doubleResult -= i++;
		doubleResult += i++;
		doubleResult *= i++;
		doubleResult /= i++;
	}

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / cast(double) 1000.0);
	printf("Double arithmetic elapsed time: %1.0f ms with doubleMin %f, doubleMax %f\n", elapsedTime, doubleMin, doubleMax);
	printf(" i: %f\n", i);
	printf(" doubleResult: %f\n", doubleResult);
	return elapsedTime;
}


double longArithmetic(long longMin, long longMax)
{
	double elapsedTime;
	clock_t stopTime;
	clock_t startTime = clock();

	long longResult = longMin;
	long i = longMin;
	while (i < longMax)
	{
		longResult -= i++;
		longResult += i++;
		longResult *= i++;
		longResult /= i++;
	}

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / cast(double) 1000.0);
	printf("Long arithmetic elapsed time: %1.0f ms with longMin %I64d, longMax %I64d\n", elapsedTime, longMin, longMax);
	printf(" i: %I64d\n", i);
	printf(" longResult: %I64d\n", longResult);
	return elapsedTime;
}


double trig(double trigMax)
{
	double elapsedTime;
	clock_t stopTime;
	clock_t startTime = clock();

	double sine;
	double cosine;
	double tangent;
	double logarithm;
	double squareRoot;

	double i = 0.0;
	while (i < trigMax)
	{
		sine = sin(i);
		cosine = cos(i);
		tangent = tan(i);
		logarithm = log10(i);
		squareRoot = sqrt(i);
		i++;
	}

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / cast(double) 1000.0);
	printf("Trig elapsed time: %1.0f ms with max of %1.0f\n", elapsedTime, trigMax);
	printf(" i: %f\n", i);
	printf(" sine: %f\n", sine);
	printf(" cosine: %f\n", cosine);
	printf(" tangent: %f\n", tangent);
	printf(" logarithm: %f\n", logarithm);
	printf(" squareRoot: %f\n", squareRoot);
	return elapsedTime;
}


double io(int ioMax)
{
	double elapsedTime;
	clock_t stopTime;
	clock_t startTime = clock();

	FILE *stream;
	stream = fopen("./TestGcc.txt", "w");
	int i = 0;
	while (i++ < ioMax)
	{
		fputs("abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefgh\n", stream);
	}
	fclose(stream);

	char readLine[100];
	stream = fopen("./TestGcc.txt", "r");
	i = 0;
	while (i++ < ioMax)
	{
		fgets(readLine, 100, stream);
	}
	fclose(stream);

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / cast(double) 1000.0);
	printf("I/O elapsed time: %1.0f ms with max of %d\n", elapsedTime, ioMax);
	printf(" last line: %s", readLine);

	return elapsedTime;
}
