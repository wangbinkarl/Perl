# !usr/bin/perl -w
# 2018-05-18
# Version 1.01 
# perl calculate_FPKM.pl All-chrom-L1.fa cmt3C.count.fa cmt-FPKM.fa
# 根据ID来匹配，calculate the FPKM accroding to the number of count。

use strict;
@ARGV == 3 or die"\n\tUsage: perl $0 <in_file1> <in_file2> <out_file>\n";
my ($in_file1,$in_file2,$out_file) = @ARGV;


open IN1,"<","$in_file1" or die;
my (%hash_R1,%hash_L1);
my $Rtotal; #count by revise
while(<IN1>){
	   my ($gene1,$length_gene1) = split;
     $hash_L1{$gene1}= $length_gene1;
     #print "$gene1\n";
     #print "$hash_L1{$gene1}\n";
}
close IN1;

#my $locus;
open IN2,"<","$in_file2" or die;
open OUT,">","$out_file" or die;
#my $i = 0;
while(<IN2>){ 
			my ($gene2,$count2) = split;
			$hash_R1{$gene2}= $count2;
			#print "$gene2\n";
      if (exists $hash_L1{$gene2}){
      		$Rtotal += $count2;         #calculate the total of reads
      		#print "exists\n";
      }else{
      		#print "$gene2\n";
      		#$i++;
      		next;
      }
      #print "$gene2\n";
      #print "$hash_L1{gene2}\n";
      #print "";
}

#print "$Rtotal\n";
my ($key,$value);
while (($key,$value)=each %hash_R1){
		
		if ($hash_L1{$key}!=0){
						my $TPM = ($value/($hash_L1{$key}*$Rtotal))*1000000000;
						print OUT "$key\t$TPM\n";
		}
}

#print OUT "The total count by revise is: $Rtotal\nThe number of noexists is: $i";
close IN2;
close OUT;
exit;

# 文档1格式	
=pod
564018
2877430
3400554
3888610
3999157
4069992
5058583
5290582
6933015
7272526

=cut

# 文档2格式：
=pod
3644180	3647784 AT1G10920
4140216	4143916 AT1G12210
4144257	4147939 AT1G12220
4174875	4178021 AT1G12280
4177917	4182593 AT1G12290
5461309	5464241 AT1G15890
6052936	6058114 AT1G17600
9433393	9439417 AT1G27170
9439653	9446223 AT1G27180
11288378	11293799 AT1G31540

=cut

# 或文档2格式
=pod
10639269	10647280 AT4G19520

=cut
