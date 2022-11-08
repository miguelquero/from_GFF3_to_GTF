# from_GFF3_to_GTF
A simple Linux script to obtain a file.gtf from a file.gff3

This script was essential to my to apply the programe Telescope. The change in the format is perform just with Linux bash commands.

An example of the desire **input format** is:


chr01   gmap_rice       CDS     10051201        10051368        95      -       0       ID=TRINITY_DN617_c0_g3_i2;Target=TRINITY_DN617_c0_g3_i2 169 2 .
chr01   gmap_rice       CDS     10262558        10262677        99      +       0       ID=TRINITY_DN3729_c0_g1_i1;Target=TRINITY_DN3729_c0_g1_i1 570 451 .
chr01   gmap_rice       CDS     10726245        10726376        100     -       0       ID=TRINITY_DN943_c0_g1_i2;Target=TRINITY_DN943_c0_g1_i2 132 1 .

An example of the output applying my scritp is the next one. This new file format do not produce errors in Telescope.

chr01   RICE    CDS     10051201        10051368        .       -       .       locus "ID=TRINITY_DN617_c0_g3_i2;Target=TRINITY_DN617_c0_g3_i2-169-2-.";
chr01   RICE    CDS     10262558        10262677        .       +       .       locus "ID=TRINITY_DN3729_c0_g1_i1;Target=TRINITY_DN3729_c0_g1_i1-570-451-.";
chr01   RICE    CDS     10726245        10726376        .       -       .       locus "ID=TRINITY_DN943_c0_g1_i2;Target=TRINITY_DN943_c0_g1_i2-132-1-.";

