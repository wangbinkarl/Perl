# !usr/bin/perl -w
# 2018-10-17
# Version 1.01
# 从gtf文件中提取目标的位点
# perl extra-locus.pl JA-ID.fa TAIR10.36.gtf JA-locus.fa
 use strict;
 
 open IN1,"<",$ARGV[0] or die; 
 my %hash;
 while(<IN1>){
       chomp;
       $hash{$_} = 1;	
 }
 
 open IN2,"<",$ARGV[1] or die;
 open OUT,">",$ARGV[2] or die; 
 my $id; 
 while(<IN2>){ 	                          
    my($type)=(split)[2];
	if($type=~/gene/){
		my($start,$end,$preid)=(split)[3,4,9];
		my $id = substr($preid,1,9);
		#print $id;
    	if(exists $hash{$id} ){
				print OUT "$id\t$start\t$end\n";  
    	}               
	}else{
		next;
	}
 }                           
  
      
 close IN1;
 close IN2;
 close OUT; 
 
 # 文档1格式	
=pod
AT1G01010
AT1G01020
=cut

# 文档2格式：
=pod
1	araport11	gene	3631	5899	.	+	.	gene_id "AT1G01010"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding";
1	araport11	transcript	3631	5899	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	exon	3631	3913	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "1"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01010.1.exon1";
1	araport11	CDS	3760	3913	.	+	0	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "1"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01010.1"; protein_version "1";
1	araport11	start_codon	3760	3762	.	+	0	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "1"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	exon	3996	4276	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "2"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01010.1.exon2";
1	araport11	CDS	3996	4276	.	+	2	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "2"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01010.1"; protein_version "1";
1	araport11	exon	4486	4605	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "3"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01010.1.exon3";
1	araport11	CDS	4486	4605	.	+	0	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "3"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01010.1"; protein_version "1";
1	araport11	exon	4706	5095	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "4"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01010.1.exon4";
1	araport11	CDS	4706	5095	.	+	0	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "4"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01010.1"; protein_version "1";
1	araport11	exon	5174	5326	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "5"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01010.1.exon5";
1	araport11	CDS	5174	5326	.	+	0	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "5"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01010.1"; protein_version "1";
1	araport11	exon	5439	5899	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "6"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01010.1.exon6";
1	araport11	CDS	5439	5627	.	+	0	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "6"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01010.1"; protein_version "1";
1	araport11	stop_codon	5628	5630	.	+	0	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; exon_number "6"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	five_prime_utr	3631	3759	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	three_prime_utr	5631	5899	.	+	.	gene_id "AT1G01010"; transcript_id "AT1G01010.1"; gene_name "NAC001"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	gene	6788	9130	.	-	.	gene_id "AT1G01020"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding";
1	araport11	transcript	6788	8737	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	exon	8594	8737	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "1"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.6.exon1";
1	araport11	exon	8417	8464	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "2"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.5.exon2";
1	araport11	CDS	8417	8419	.	-	0	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "2"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01020.6"; protein_version "1";
1	araport11	start_codon	8417	8419	.	-	0	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "2"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	exon	8236	8325	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "3"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.1.exon3";
1	araport11	CDS	8236	8325	.	-	0	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "3"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01020.6"; protein_version "1";
1	araport11	exon	7564	7649	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "4"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.1.exon6";
1	araport11	CDS	7564	7649	.	-	0	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "4"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01020.6"; protein_version "1";
1	araport11	exon	7157	7450	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "5"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.2.exon7";
1	araport11	CDS	7318	7450	.	-	1	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "5"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01020.6"; protein_version "1";
1	araport11	stop_codon	7315	7317	.	-	0	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "5"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	exon	6788	7069	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; exon_number "6"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.2.exon8";
1	araport11	five_prime_utr	8594	8737	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	five_prime_utr	8420	8464	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	three_prime_utr	7157	7314	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	three_prime_utr	6788	7069	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.6"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	transcript	6788	9130	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.3"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";
1	araport11	exon	8571	9130	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.3"; exon_number "1"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.3.exon1";
1	araport11	exon	8236	8464	.	-	.	gene_id "AT1G01020"; transcript_id "AT1G01020.3"; exon_number "2"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; exon_id "AT1G01020.4.exon2";
1	araport11	CDS	8236	8442	.	-	0	gene_id "AT1G01020"; transcript_id "AT1G01020.3"; exon_number "2"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding"; protein_id "AT1G01020.3"; protein_version "1";
1	araport11	start_codon	8440	8442	.	-	0	gene_id "AT1G01020"; transcript_id "AT1G01020.3"; exon_number "2"; gene_name "ARV1"; gene_source "araport11"; gene_biotype "protein_coding"; transcript_source "araport11"; transcript_biotype "protein_coding";

=cut

# 或文档2格式
=pod
AT1G01010	3631	5899
AT1G01020	6788	9130
=cut
 
