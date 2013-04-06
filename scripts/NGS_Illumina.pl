#!/usr/bin/perl
use lib './';
use NGS_Illumina;


# Assume the paths for fastx_tk, maq, bwa, samtools are in ENV{PATH}; check $PATH setting $HOME/.bash_profile
# Assume perl and python are installed
my $NGS_obj = new NGS_Illumina ('sample_name'	=>	'Testis_T28',
								'input_fq1'		=>	'Run1_testicular-28T_lane2_read1_sequence.txt', 
								'input_fq2'		=>	'Run1_testicular-28T_lane2_read2_sequence.txt', 
								'pe'			=>	1,
								'reference_fa'	=>	'/data/public/reference_genomes/genome_hg18.fa',
								'dbsnp_rod'		=>	'/data/nextgen1/pipeline/dbsnp_130_hg18.rod',
								'target_bed'	=>	'/data/nextgen1/pipeline/targets/SureSelect_All_Exon_G3362_with_names.v2.bed', #Agilent SureSelect Target Enrichment
								'picard_dir'	=>	'/home/gmslz/tools/picard-tools-1.44',
								'gatk_dir'		=>	'/data/public/tools/gatk-v4333/Sting',
								'tmp_dir'		=>	'/home/tmp',
								'java_mem'		=>	'-Xmx4g'); 

$NGS_obj -> check_fastq_format();
#$NGS_obj -> illumina2sanger();
#$NGS_obj -> qcstats();
#$NGS_obj -> fastq_trimmer(1, 74);
#$NGS_obj -> aln_bwa();					#alignment step, which includes bwa, sort, rm_pcrdup, add_rg
$NGS_obj -> snp_analysis_gatk();		#gatk step, which includes realignment, recalibration, genotyping (indel, snp)
