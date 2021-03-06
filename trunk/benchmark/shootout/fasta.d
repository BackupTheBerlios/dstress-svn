/* The Great Computer Language Shootout
   http://shootout.alioth.debian.org/

   converted to D by Dave Fladebo
   compile: dmd -O -inline -release fasta.d
*/

import std.stream, std.string;

void main(char[][] args)
{
    int n = args.length > 1 ? atoi(args[1]) : 1;

    auto Fasta fasta = new Fasta;

    fasta.makeRepeatFasta("ONE", "Homo sapiens alu", n*2);
    fasta.makeRandomFasta("TWO", "IUB ambiguity codes", Fasta.TableType.iub, n*3);
    fasta.makeRandomFasta("THREE", "Homo sapiens frequency", Fasta.TableType.homosapiens, n*5);
}

auto class Fasta: Random
{
private:
    const char[] alu =
        "GGCCGGGCGCGGTGGCTCACGCCTGTAATCCCAGCACTTTGG"
        "GAGGCCGAGGCGGGCGGATCACCTGAGGTCAGGAGTTCGAGA"
        "CCAGCCTGGCCAACATGGTGAAACCCCGTCTCTACTAAAAAT"
        "ACAAAAATTAGCCGGGCGTGGTGGCGCGCGCCTGTAATCCCA"
        "GCTACTCGGGAGGCTGAGGCAGGAGAATCGCTTGAACCCGGG"
        "AGGCGGAGGTTGCAGTGAGCCGAGATCGCGCCACTGCACTCC"
        "AGCCTGGGCGACAGAGCGAGACTCCGTCTCAAAAA";

    class IUB
    {
        this(char c, double p)
        {
            this.c = c;
            this.p = p;
        }
        char c;
        double p;
    }

    IUB[] iub;
    IUB[] homosapiens;

    void makeCumulative(IUB[] table)
    {
        double prob = 0.0;
        foreach(IUB tbl; table)
        {
            prob += tbl.p;
            tbl.p = prob;
        }
    }

    BufferedStream bso;

public:
    enum TableType
    {
        iub,
        homosapiens
    }

    this()
    {
        iub ~= new IUB('a', 0.27);
        iub ~= new IUB('c', 0.12);
        iub ~= new IUB('g', 0.12);
        iub ~= new IUB('t', 0.27);

        iub ~= new IUB('B', 0.02);
        iub ~= new IUB('D', 0.02);
        iub ~= new IUB('H', 0.02);
        iub ~= new IUB('K', 0.02);
        iub ~= new IUB('M', 0.02);
        iub ~= new IUB('N', 0.02);
        iub ~= new IUB('R', 0.02);
        iub ~= new IUB('S', 0.02);
        iub ~= new IUB('V', 0.02);
        iub ~= new IUB('W', 0.02);
        iub ~= new IUB('Y', 0.02);

        homosapiens ~= new IUB('a', 0.3029549426680);
        homosapiens ~= new IUB('c', 0.1979883004921);
        homosapiens ~= new IUB('g', 0.1975473066391);
        homosapiens ~= new IUB('t', 0.3015094502008);

        bso = new BufferedStream(stdout);
    }

    ~this()
    {
        bso.close();
    }

    void makeRepeatFasta(char[] id, char[] desc, int n)
    {
        const int length = 60, kn = alu.length;
        int k = 0;

        bso.writefln(">",id," ",desc);
        char[length + 1] line;
        while(n > 0)
        {
            int m;
            if(n < length) m = n; else m = length;
            for(int j = 0; j < m; j++, k++)
            {
                if(k >= kn) k = 0;
                line[j] = alu[k];
            }
            line[m] = '\n';
            bso.write(cast(ubyte[])line[0..m+1]);
            n -= length;
        }
    }

    void makeRandomFasta(char[] id, char[] desc, TableType tableType, int n)
    {
        const int length = 60;
        IUB[] table;

        switch(tableType)
        {
            case TableType.iub:
                table = iub;
                break;
            default:
                table = homosapiens;
                break;
        }

        bso.writefln(">",id," ",desc);
        makeCumulative(table);
        char[length + 1] line;
        while(n > 0)
        {
            int m;
            if(n < length) m = n; else m = length;
            for(int j = 0; j < m; j++)
            {
                double rval = genRandom(1);
                foreach(IUB tbl; table)
                {
                    if(rval < tbl.p)
                    {
                        line[j] = tbl.c;
                        break;
                    }
                }
            }
            line[m] = '\n';
            bso.write(cast(ubyte[])line[0..m+1]);
            n -= length;
        }
    }
}

class Random
{
private:
    int last = 42;
    const int IM = 139968;
    const int IA = 3877;
    const int IC = 29573;
public:
    double genRandom(double max)
    {
        return(max * (last = (last * IA + IC) % IM) / IM);
    }
}
