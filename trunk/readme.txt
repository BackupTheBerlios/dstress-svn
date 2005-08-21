
    DStress - a D compiler test suite

(c) 2004, 2005 Thomas Kühne <thomas [at] kuehne.cn>


      ^ <#top> Abstract

    DStress is a collection of bug tracking and language conformance
    test cases for the D programming language
    <http://digitalmars.com/d/>. This document describes the use of the
    testing framework. The test summary can be found at
    <http://dstress.kuehne.cn/www/dstress.html> and a
    complete listing at <http://dstress.kuehne.cn/www/results.html>.


      ^ <#top> Index

       1. Conditions <#conditions>
       2. Symbols <#symbols>
       3. Environment Settings <#environment-settings>
       4. Testcase Settings <#testcase-settings>
       5. Testing <#testing>
       6. Report Generation <#report-generation>
       7. Sourcecode Metadata <#sourcecode-metadata>


      ^ <#top> Conditions

    Passed

           1. compiler return code zero
           2. no assertion was thrown
           3. return code of main is zero (applies only to the runtime
              tests)

    Failed

           1. compiler return code unequal zero
           2. linker return code unequal zero
           3. assertion was thrown
           4. return code of main isn't zero (applies only to the
              runtime tests)

    Error

           1. compiler segfaulted
           2. test case segfaulted
           3. unexpected compiler failure without source indication


      ^ <#top> Symbols

    The symbols are the same as those used by the DejaGnu
    <http://www.gnu.org/software/dejagnu/> test framework.

    PASS
        test case was expected to pass, and it did
    XPASS
        test case was expected to fail, but passed
    FAIL
        test case was expected to pass, but failed
    XFAIL
        test case was expected to fail, and it did
    ERROR
        compiler, linker or test case segfaulted


      ^ <#top> Environment Settings

    DMD / dmd
        the D compiler, e.g.: /c:\dmd\bin\dmd.exe/
        use the wrapper /gdmd/ for the GDC compiler
        default value: /dmd/
    GDB / gdb
        a debugger with gdb-like commands, e.g.: //usr/local/bin/gdb/
        default value: /gdb/


      ^ <#top> Testcase Settings

    The settings starts with the end of one of the markers listed below
    and continues until the end of the line.

    __DSTRESS_DFLAGS__
        additional compiler arguments
        default: /empty/
    __DSTRESS_EFILE__
        expected failing source file
        default: if __DSTRESS_ELINE__ isn't empty /current source file/,
        else /empty/
    __DSTRESS_ELINE__
        expected failing source line
        default: /empty/
    __GDB_PATTERN__
        expected regular expression in GDB's output
        default: /empty/
    __GDB_SCRIPT__
        GDB command sequence
        note: replace linebreaks by /\n/
        default: /empty/


      ^ <#top> Testing

    Testcases that are newer than the result file are ignored.

    Posix Systems: AIX, Apple, BSD, Linux, Unix

        Requirements
            a C compiler
            dstress.c <./dstress.c>
            crashRun.c <./crashRun.c>
            a D compiler
            GnuMake version 3.80 or later (optional)
        Step-by-Step (without GnuMake)

               1. compile /dstress.c/

gcc -o dstress dstress.c

               2. compile /crashRun.c/

gcc -o crashRun crashRun.c

               3. test D compiler:

./dstress compile compile/const_12.d

               4. test linker and shell:

./dstress run run/main_02.d

               5. start testing:

./dstress [compile|nocompile|run|norun] testfile.d 2>> log.txt >> results.txt

        Step-by-Step (with GnuMake)

               1. clean-up:

make distclean

               2. start testing:

make all > results

    Windows Systems

        Requirements
            a C compiler
            dstress.c <./dstress.c>
            a D compiler
        Restrictions
            no eternal-loop protection
            no proper Access Violation detection
            Access Violations might cause pop-ups requiring human
            interaction
        Step-by-Step

               1. make sure you understand the restrictions
                  <#windows-restrictions>
               2. open dstress.c, search for /#error comment me out/ and
                  follow the instruction
               3. compile /dstress.c/

dmc -o dstress dstress.c

               4. test D compiler:

dstress compile compile\const_12.d

               5. test linker and shell:

dstress run run\main_02.d

               6. start testing:

dstress [compile|nocompile|run|norun] testfile.d 2>> log.txt >> results.txt


      ^ <#top> Report Generation

    Requirements

            * a Java compiler
            * GenReport.java <./www/GenReport.java>
            * at least one logfile

    Step-by-Step

           1. compile the reporter class

javac GenReporter.java

           2. feed the logfile(s) to the reporter class

java cn.kuehne.dmd.dstress.GenReport results1 results2 > report.raw

           3. sort and insert /report.raw/ with apropiate HTML tags into
              a HTML file

    Notes

            * the output is unsorted
            * one or more result-files can be feed to the reporter class
            * lines containing statistic data are marked by /<!--
              summary -->/
            * use /...resultfile/ instead of /resultfile/ to mark all
              FAIL, XPASS, ERROR testcases of this logfile by /<!-- P! -->/
            * more than one resultfile can be marked


      ^ <#top> Sourcecode Metadata

    Metadata starts with one of the markers listed below and continues
    until the end of the line.

    @author@
        the bug/testcase reporter
        common format: /Name <email@host>/
    @date@
        first report date
        common format: /year-month-day/
    @uri@
        the message id of the email/newsgroup message or the webpage
        common format: /news:msg-id@host/ or /http://host/page/
    @WARNING@
        marks testcases with external dependencies or
        architecture/compiler specific data
        common format: /descriptive text/



------------------------------------------------------------------------
http://dstress.kuehne.cn/readme.html; 2005-08-21; Webmaster
<mailto:webmastro@kuehne.cn>
