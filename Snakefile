rule all:
	input:
		expand("results/{sample}.trimmed.fastq",sample=config["samples"])

rule fastp:
	input:
		sample="samples/{sample}.fastq"
	output:
		trimmed="results/{sample}.trimmed.fastq"
	shell: 
		"fastp -i {input.sample}  -o {output.trimmed} -h
Final_Report.html"
		
INPUT: The SAMPLES folder is where it will pull the sample.fasq file

OUTPUT: The output file will then be placed in the RESULTS folder saved as the FILE NAME 
and it will add the trimmed.fastq


