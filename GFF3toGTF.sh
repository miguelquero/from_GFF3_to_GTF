
#!/bin/bash

#To obtain the last column I extract the locus and I add 'locus' at the beginig, "", and the ';' at the end.

cut -f9 file.gff3 | sed 's/ /-/g' | sed 's/^/"/' | sed 's/$/"/' | sed 's/$/;/' | awk '{$(NF+1) = "locus"; print}' | awk '{print $2,$1}' > file_locus.txt

# The two first comands can be erase depending on the chromosome column format .I add a column with the specie (RICE), next a column with the word 'gene', finally a new column of dots. The last step is to sort the columns.

cat file.gff3 | awk -F '\t' -v  OFS='\t' '{print $1,$3,$4,$5,$7}' | awk -F '\t' -v OFS='\t' '{$(NF+1) = "RICE"; print}' | \
awk -F '\t' -v OFS='\t' '{$(NF+1) = "."; print}' | awk -F '\t' -v OFS='\t' '{$(NF+1) = "."; print}' | \
awk -F '\t' -v  OFS='\t' '{print $1,$6,$2,$3,$4,$7,$5,$8}' > file_nolocus.txt

# To obtain the final file is necessary to add the locus colunm .

paste file_nolocus.txt file_locus.txt > file.gtf

rm file_nolocus.txt file_locus.txt
