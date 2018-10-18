# !usr/bin/perl -w
# 2018-9-17
# Version 1.01 ##
#extra the goal data from TAIR10
 use strict;
 
 open FASTA,"<","TAIR10.36.gtf" or die;
 open OUT,">","exon-tran-len.fa" or die;    

 my ($id,$Len,%hash); 
 while(<FASTA>){ 	                          
    my ($fea,$start,$end,$preid) = (split)[2,3,4,11];
    #$id = substr($preid,1,11); 
    if($fea eq 'exon'){
    				$Len = $end-$start+1;
    				$hash{$preid} += $Len;
    }
    
 }
 
 foreach(sort keys %hash){
 				print OUT "$_\t$hash{$_}\n";	
 }
 
      
 close FASTA;
 close OUT;  
 
 # FASTA�����ʽ	
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

=cut

# OUT�����ʽ��
=pod
AT1G01010.1	1688

=cut