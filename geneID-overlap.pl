# !usr/bin/perl -w
# 2016-05-18
# Version 1.01 

# �������б����overlap��

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
  		chomp;  		 		
  		if(exists $hash{$_}){
  				print OUT "$_\n";
  		}
	}
	close IN2;
	close OUT;
	exit;

# �ĵ�1��ʽ	
=pod


=cut

# �ĵ�2��ʽ��
=pod


=cut

# ���ĵ�2��ʽ
=pod


=cut