# !usr/bin/perl -w
# 2017-06-26
# Version 1.01 ###�������еĿո�ת��ΪTAB	��
 
  use strict;
 
 open FASTA,"<",$ARGV[0] or die;
 open OUTPUT,">",$ARGV[1] or die;    

 #my $locus; 
 while(<FASTA>){
 	    chomp; 	                          
      s/\s/\t/g;
    print OUTPUT "$_\n";
 }                           
  
      
 close FASTA;
 close OUTPUT; 
