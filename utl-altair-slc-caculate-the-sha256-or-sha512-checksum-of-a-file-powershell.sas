%let pgm=utl-altair-slc-caculate-the-sha256-or-sha512-checksum-of-a-file-powershell;

%stop_submission;

Altair slc calculate the sha 256 or sha 512 checksum of a file powershell

PROBLEM

   Compute both the sha 256 and sha 512 checksums for file d:/txt/sample.txt

too long to post here, see github
[GITHUB](https://github.com/rogerjdeangelis/utl-altair-slc-caculate-the-sha256-or-sha512-checksum-of-a-file-powershell)
https://github.com/rogerjdeangelis/utl-altair-slc-caculate-the-sha256-or-sha512-checksum-of-a-file-powershell


[SIEMENS](https://support.industry.siemens.com/cs/document/109483101)
https://support.industry.siemens.com/cs/document/109483101

macros
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

Related Repo
https://github.com/rogerjdeangelis/utl-altair-slc-powershell-calculating-and-validating-file-hash-using-different-algorithms
https://github.com/rogerjdeangelis/utl_encrypt_decrypt_sha256_md5

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

/*--- DELETE FILE IF EXISTS ---*/
%utlfkil(d:/txt/sample.txt);

/*---- CREATE A FILE ---*/
data _null_;
 file "d:/txt/sample.txt";
 put "SAMPLE TEXT FILE"
run;

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

%slc_psbegin;
cards4;
get-filehash -algorithm sha256 'd:\txt\sample.txt' | Format-List
get-filehash -algorithm sha512 'd:\txt\sample.txt' | Format-List
;;;;
%slc_psend;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/* Algorithm : SHA256                                                                                                     */
/* Hash      : E22414B39578B8C42C92EE8063D5669C997DAA246CA06A0CB47F41204B29F6D4                                           */
/* Path      : D:\txt\sample.txt                                                                                          */
/*                                                                                                                        */
/*                                                                                                                        */
/*                                                                                                                        */
/* Algorithm : SHA512                                                                                                     */
/* Hash      : 7C3FB96FAAB25245BA7961676C71A2DCEA612B8C26E0D77243E9A77EF083DEBA0B8F9FFC190DDE07BC1575EE221E0E0361E00156D74*/
/*             4FEC4F4A9F6292B7DD525                                                                                      */
/* Path      : D:\txt\sample.txt                                                                                          */
/**************************************************************************************************************************/

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/
1                                          Altair SLC          14:43 Monday, April 27, 2026

NOTE: Copyright 2002-2025 World Programming, an Altair Company
NOTE: Altair SLC 2026 (05.26.01.00.000758)
      Licensed to Roger DeAngelis
NOTE: This session is executing on the X64_WIN11PRO platform and is running in 64 bit mode

NOTE: AUTOEXEC processing beginning; file is C:\wpsoto\autoexec.sas
NOTE: AUTOEXEC source line
1       +  ï»¿ods _all_ close;

NOTE: AUTOEXEC processing completed

1         %slc_psbegin;
2         cards4;

NOTE: The file 'c:\temp\ps_pgm.ps1' is:
      Filename='c:\temp\ps_pgm.ps1',
      Owner Name=SLC\suzie,
      File size (bytes)=0,
      Create Time=14:40:04 Mar 21 2026,
      Last Accessed=14:43:34 Apr 27 2026,
      Last Modified=14:43:34 Apr 27 2026,
      Lrecl=32767, Recfm=V

NOTE: 2 records were written to file 'c:\temp\ps_pgm.ps1'
      The minimum record length was 80
      The maximum record length was 80
NOTE: The data step took :
      real time : 0.003
      cpu time  : 0.015


3         get-filehash -algorithm sha256 'd:\txt\sample.txt' | Format-List
4         get-filehash -algorithm sha512 'd:\txt\sample.txt' | Format-List
5         ;;;;
6         %slc_psend;

NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=powershell.exe -executionpolicy bypass -file c:/temp/ps_pgm.ps1 >  c:/temp/ps_pgm.log,
      Lrecl=32756, Recfm=V

NOTE: No records were written to file PRINT

NOTE: No records were read from file rut
NOTE: The data step took :
      real time : 0.469
      cpu time  : 0.015



NOTE: The infile rut is:
      Unnamed Pipe Access Device,
      Process=powershell.exe -executionpolicy bypass -file c:/temp/ps_pgm.ps1 >  c:/temp/ps_pgm.log,
      Lrecl=32767, Recfm=V

NOTE: No records were written to file PRINT

NOTE: No records were read from file rut
NOTE: The data step took :
      real time : 0.458
      cpu time  : 0.015



NOTE: The infile 'c:\temp\ps_pgm.log' is:
      Filename='c:\temp\ps_pgm.log',
      Owner Name=SLC\suzie,
      File size (bytes)=356,
      Create Time=10:30:46 Mar 22 2026,
      Last Accessed=14:43:34 Apr 27 2026,
      Last Modified=14:43:34 Apr 27 2026,
      Lrecl=32767, Recfm=V



Algorithm : SHA256
Hash      : E22414B39578B8C42C92EE8063D5669C997DAA246CA06A0CB47F41204B29F6D4
Path      : D:\txt\sample.txt


Algorithm : SHA512
Hash      : 7C3FB96FAAB25245BA7961676C71A2DCEA612B8C26E0D77243E9A77EF083DEBA0B8F9FFC190DDE07BC1575EE221E0E0361E00156D74
            4FEC4F4A9F6292B7DD525
Path      : D:\txt\sample.txt



NOTE: 17 records were read from file 'c:\temp\ps_pgm.log'
      The minimum record length was 0
      The maximum record length was 119
NOTE: 17 records were written to file PRINT

NOTE: The data step took :
      real time : 0.013
      cpu time  : 0.000

ERROR: Error printed on page 1

NOTE: Submitted statements took :
      real time : 1.084
      cpu time  : 0.125

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
