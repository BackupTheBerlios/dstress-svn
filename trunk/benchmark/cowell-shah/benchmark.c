/* All code Copyright 2004 Christopher W. Cowell-Shah */

/*
	http://www.ocf.berkeley.edu/~cowell/research/benchmark/code/Benchmark.c
*/

#include <time.h>
#include <math.h>
#include <stdio.h>

extern double log10(double);

double intArithmetic(int);
double doubleArithmetic(double, double);
double longArithmetic(long long int, long long int);
double trig(double);
double io(int);

int main()
{
	int intMax =            1000000000; /* 1B */
	double doubleMin =      10000000000.0; /* 10B */
	double doubleMax =      11000000000.0; /* 11B */
	long long int longMin = 10000000000LL; /* 10B */
	long long int longMax = 11000000000LL; /* 11B */
	double trigMax =        10000000; /* 10M */
	int ioMax =             1000000; /* 1M */



	long double intArithmeticTime;
	long double doubleArithmeticTime;
	long double longArithmeticTime;
	long double trigTime;
	long double ioTime;
	long double totalTime;

	printf("Start C benchmark\n");

	intArithmeticTime = intArithmetic(intMax);
	doubleArithmeticTime = doubleArithmetic(doubleMin, doubleMax);
	longArithmeticTime = longArithmetic(longMin, longMax);
	trigTime = trig(trigMax);
#if 0
	ioTime = io(ioMax);
#else
	ioTime = 0.0;
#endif
	totalTime = intArithmeticTime + doubleArithmeticTime + longArithmeticTime + trigTime + ioTime;

	printf("Total elapsed time: %Lf ms\n", totalTime);

	printf("Stop C benchmark\n");
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
		intResult += i++;
		intResult *= i++;
		intResult /= i++;
	}

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / (double) 1000.0);
	printf("Int arithmetic elapsed time: %1.0f ms with intMax of %Ld\n", elapsedTime, intMax);
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
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / (double) 1000.0);
	printf("Double arithmetic elapsed time: %1.0f ms with doubleMin %f, doubleMax %f\n", elapsedTime, doubleMin, doubleMax);
	printf(" i: %f\n", i);
	printf(" doubleResult: %f\n", doubleResult);
	return elapsedTime;
}


double longArithmetic(long long int longMin, long long int longMax)
{
	double elapsedTime;
	clock_t stopTime;
	clock_t startTime = clock();

	long long longResult = longMin;
	long long i = longMin;
	while (i < longMax)
	{
		longResult -= i++;
		longResult += i++;
		longResult *= i++;
		longResult /= i++;
	}

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / (double) 1000.0);
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
	while (i++ < trigMax)
	{
		sine = sin(i);
		cosine = cos(i);
		tangent = tan(i);
		logarithm = log10(i);
		squareRoot = sqrt(i);
	}

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / (double) 1000.0);
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
	int i;
	char readLine[100];
	stream = fopen("./TestGcc.txt", "w");
	i = 0;
	while (i++ < ioMax)
	{
		fputs("abcdefghijklmnopqrstuvwxyz1234567890abcdefghijklmnopqrstuvwxyz1234567890abcdefgh\n", stream);
	}
	fclose(stream);

	stream = fopen("./TestGcc.txt", "r");
	i = 0;
	while (i++ < ioMax)
	{
		fgets(readLine, 100, stream);
	}
	fclose(stream);

	stopTime = clock();
	elapsedTime = (stopTime - startTime) / (CLOCKS_PER_SEC / (double) 1000.0);
	printf("I/O elapsed time: %1.0f ms with max of %d\n", elapsedTime, ioMax);
	printf(" last line: %s", readLine);

	return elapsedTime;
}
