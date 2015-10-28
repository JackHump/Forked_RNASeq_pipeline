########## first the high level parameters about where the scripts and the bundle are located
RNASEQPIPBASE=/cluster/project8/vyp/vincent/Software/RNASeq_pipeline  ##this probably needs to be updated, but I do not think it has to
RNASEQBUNDLE=/cluster/project8/vyp/vincent/Software/RNASeq_pipeline/bundle  ##this probably should stay

export RNASEQPIPBASE=$RNASEQPIPBASE
export RNASEQBUNDLE=$RNASEQBUNDLE
pipeline=${RNASEQPIPBASE}/RNAseq_pipeline_v8.sh

#############
species=Human_hg38
submit=no

starStep1=yes
starStep2=yes

summary=no
prepareCounts=no
Rdeseq=no
Rdexseq=no



oFolder=/scratch2/vyp-scratch2/IoO_RNASeq/processed/Owen_blood
iFolder=/SAN/biosciences/ioo_no_aw/data/Project/A2914/fastq

sh $pipeline --iFolder ${iFolder} --oFolder ${oFolder} --dataframe support/Owen_blood.tab --code Owen_blood --prepareCounts ${prepareCounts} --Rdexseq ${Rdexseq} --Rdeseq ${Rdeseq}  --summary ${summary} --starStep1 ${starStep1} --starStep2 ${starStep2} --species human_hg38 --submit ${submit}

echo $mainscript






