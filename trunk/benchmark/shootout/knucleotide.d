/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   Algorithm (written in C#) contributed by Isaac Gouy

   Converted to and optimized for D by Dave Fladebo
   compile: dmd -O -inline -release knucleotide.d
*/

import std.outbuffer, std.stream, std.string;

void main()
{
    char[]          bufr = new char[4096];
    bool            flag = false;
    OutBuffer       ob = new OutBuffer();
    BufferedStream  s = new BufferedStream(std.stream.stdin,bufr.length);
    ob.reserve(s.size);

    // extract nucleotide sequence
    while(!s.eof())
    {
        char[] line = s.readLine(bufr);
        if(line.length)
        {
            if(!flag)
            {
                flag = !icmp(line[0..6],">THREE");
                continue;
            }
            else
            {
                char c = line[0];
                if(c == '>') break;
                else if(c != ';') ob.write(toupper(line));
            }
        }
    }

    // calculate nucleotide frequencies
    KNucleotide kn = new KNucleotide(ob.toString());
    kn.WriteFrequencies(1);
    kn.WriteFrequencies(2);

    kn.WriteCount("GGT");
    kn.WriteCount("GGTA");
    kn.WriteCount("GGTATT");
    kn.WriteCount("GGTATTTTAATT");
    kn.WriteCount("GGTATTTTAATTTATAGT");
}

class KNucleotide {
private:
    char[]          sequence;
    int[char[]]     frequencies;
    int             k;

public:
    this(char[] s)
    {
        sequence = s;
        k = 0;
    }

    void WriteFrequencies(int nucleotideLength)
    {
        GenerateFrequencies(nucleotideLength);

        int sum = 0;
        foreach(char[] key, int val; frequencies)
        {
            if(key.length == nucleotideLength) sum += val;
        }

        int last = 0;
        foreach(int vsr; frequencies.values.sort.reverse)
        {
            if(vsr != last)
            {
                foreach(char[] key, int val; frequencies)
                {
                    if(key.length == nucleotideLength)
                    {
                        double ratio = sum ? val / cast(double)sum : 0;
                        if(val == vsr) std.stdio.writefln(key," %2.2f",ratio * 100.0);
                    }
                }
                last = vsr;
            }
        }
        std.stdio.writefln("");
    }

    void WriteCount(char[] nucleotideFragment)
    {
        GenerateFrequencies(nucleotideFragment.length);
        int count = frequencies[nucleotideFragment];
        std.stdio.writefln(count,"\t",nucleotideFragment);
    }

private:
    void GenerateFrequencies(int length)
    {
        k = length;
        for(int frame = 0; frame < k; frame++) KFrequency(frame);
    }

    void KFrequency(int readingFrame)
    {
        int n = sequence.length - k + 1;
        for(int i = readingFrame; i < n; i += k)
        {
            frequencies[sequence[i..i+k]]++;
        }
    }
}
