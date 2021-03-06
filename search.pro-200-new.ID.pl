# !usr/bin/perl -w
# 2016-05-18
# Version 1.01 

# 根据ID来匹配，以ID，含启动子位点，终止位点格式输出。

use strict;
@ARGV == 3 or die"\n\tUsage: perl $0 <in_file1> <in_file2> <out_file>\n";
my ($in_file1,$in_file2,$out_file) = @ARGV;


open IN1,"<","$in_file1" or die;
my %hash;
while(<IN1>){
	chomp;
  $hash{$_}= 1;
}
close IN1;

#my $locus;
open IN2,"<","$in_file2" or die;
open OUT,">","$out_file" or die;
while(<IN2>){ 
  my($start,$end,$strand,$id) = (split)[0,1,2,3];
	if(exists $hash{$id}){
		if ($strand=~/-/){                      #
			my $twopro = $end + 200;
			my $twopro2 = $end + 1;
			print OUT "$twopro2\t$twopro\t-\t$id\n";
		  #print OUT "$start\t$end\t-\t$id\n";
	  }else{
	  	my $twopro = $start - 200;
	  	my $twopro2 = $start - 1;
	  	print OUT "$twopro\t$twopro2\t+\t$id\n";
	  }
	  
  }

}
close IN2;
close OUT;
exit;

# 文档1格式	
=pod


=cut

# 文档2格式：
=pod


=cut

# 或文档2格式
=pod


=cut