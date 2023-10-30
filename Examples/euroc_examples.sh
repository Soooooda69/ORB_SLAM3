#!/bin/bash
# pathDatasetEuroc='/Datasets/EuRoC' #Example, it is necesary to change it by the dataset path

#------------------------------------
# Monocular Examples
# echo "Launching MH01 with Monocular sensor"
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/EuRoC.yaml "$pathDatasetEuroc"/MH01 ./Monocular/EuRoC_TimeStamps/MH01.txt dataset-MH01_mono

#-------------------------------------COLON-----------------------------------

# pathDatasetEuroc='../../Datasets/COLON'
# for file in "$pathDatasetEuroc"/*; do
#     echo "File name: $(basename "$file")"
#     echo "Launching $file with Monocular sensor"
#     ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/colon.yaml $file "$pathDatasetEuroc"/$file/timestamp.txt $(basename "$file")
# done

###################################### sinus ######################################
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/endoscopy_2603.yaml ../../Datasets/sinus/2603 ../../Datasets/sinus/2603/timestamp.txt sinus_2603
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/endoscopy_3213.yaml ../../Datasets/sinus/3213 ../../Datasets/sinus/3213/timestamp.txt sinus_3213
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/endoscopy_4259.yaml ../../Datasets/sinus/4259 ../../Datasets/sinus/4259/timestamp.txt sinus_4259

###################################### arthroscopy ######################################
./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_e.yaml ../../Datasets/Arthro/e ../../Datasets/Arthro/e/timestamp.txt Arthro_e
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_h.yaml ../../Datasets/Arthro/h ../../Datasets/Arthro/h/timestamp.txt Arthro_h
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_g.yaml ../../Datasets/Arthro/g ../../Datasets/Arthro/g/timestamp.txt Arthro_g
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_g.yaml ../../Datasets/G/areaJoint ../../Datasets/G/areaJoint/times.txt Arthro_g
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_e.yaml ../../Datasets/E/bag_a1_Arthrocam ../../Datasets/E/bag_a1_Arthrocam/timestamp.txt Arthro_e
# ./Monocular/mono_euroc ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_e.yaml ../../Datasets/E/bag_a1_Arthrocam ../../Datasets/E/bag_a1_Arthrocam/timestamp.txt Arthro_e
