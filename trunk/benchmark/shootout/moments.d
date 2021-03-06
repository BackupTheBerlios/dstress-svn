/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   http://www.bagley.org/~doug/shootout/
   from Waldek Hebisch

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release moments.d
*/

import std.stream, std.math, std.c.stdlib;

void main()
{
    int         n = 0;
    int         mid = 0;
    double      sum  = 0.0;
    double      mean = 0.0;
    double      average_deviation = 0.0;
    double      standard_deviation = 0.0;
    double      variance = 0.0;
    double      skew = 0.0;
    double      kurtosis = 0.0;
    double      median = 0.0;
    double[]    nums;

    int start = 0;
    nums.length = 4096;
    char[] file = stdin.toString();
    foreach(int idx, char c; file)
    {
        if(c == '\n' || idx == (file.length - 1))
        {
            if(nums.length == n) nums.length = n * 2;
            sum += (nums[n++] = atof(cast(char*)file[start..idx]));
            start = idx + 1;
        }
    }

    mean = sum / n;

    foreach(double num; nums[0..n])
    {
        double dev = num - mean;
        average_deviation += fabs(dev);
        variance += dev * dev;
        skew += dev * dev * dev;
        kurtosis += dev * dev * dev * dev;
    }

    average_deviation /= n;
    variance /= (n - 1);
    standard_deviation = sqrt(variance);

    if(variance)
    {
        skew /= (n * variance * standard_deviation);
        kurtosis = (kurtosis/(n * variance * variance)) - 3.0;
    }

    mid = n / 2;
    kmedian(nums, n, mid);
    median = n % 2 ? nums[mid] : (nums[mid] + max(nums,mid))/2;

    stdout.writefln("n:                  %d\n", n
                   ,"median:             %f\n", median
                   ,"mean:               %f\n", mean
                   ,"average_deviation:  %f\n", average_deviation
                   ,"standard_deviation: %f\n", standard_deviation
                   ,"variance:           %f\n", variance
                   ,"skew:               %f\n", skew
                   ,"kurtosis:           %f"  , kurtosis);
}

void kmedian(double* a, int n, int k)
{
    while(1)
    {
        int j = rand() % n;
        double b = a[j];
        int i = 0;
        j = n - 1;
        while(1)
        {
            while(a[i] < b) i++;
            while(a[j] > b) j--;
            if(i < j)
            {
                double t = a[i];
                a[i] = a[j];
                a[j] = t;
                i++;
                j--;
            }
            else
            {
                if(a[j] < b) j++;
                if(a[i] > b) i--;
                break;
            }
        }
        if(i < k)
        {
            k -= i + 1;
            n -= i + 1;
            a += i + 1;
        }
        else if(j > k)
        {
            n = j;
        }
        else
        {
        return;
        }
    }
}

double max(double[] a, int n)
{
    double m = a[0];

    for(int j = 1; j < n; j++)
    {
        if(a[j] > m) m = a[j];
    }

    return(m);
}
