#!/bin/bash

#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# pathDatasetEuroc='/Datasets/arthroscopy'
# echo "Launching arthroscopy_e with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_e.yaml "$pathDatasetEuroc"/e "$pathDatasetEuroc"/e/poses_gt.txt e

# echo "Launching arthroscopy_g with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_g.yaml "$pathDatasetEuroc"/g_800_1300 "$pathDatasetEuroc"/g_800_1300/poses_gt.txt g_800_1300

# echo "Launching arthroscopy_h with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/arthroscope_h.yaml "$pathDatasetEuroc"/h_1_400 "$pathDatasetEuroc"/h_1_400/poses_gt.txt h_1_400

# #------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
pathDatasetEuroc='../../Datasets/COLON'
# Use a for loop to list and echo file names
for file in "$pathDatasetEuroc"/*; do
    echo "File name: $(basename "$file")"
    echo "Launching $file with Monocular sensor"
    ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/colon.yaml "$pathDatasetEuroc"/$file "$pathDatasetEuroc"/$file/poses_gt.txt $(basename "$file")

# echo "Launching sigmoid_t2_a with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/colon.yaml "$pathDatasetEuroc"/sigmoid_t2_a "$pathDatasetEuroc"/sigmoid_t2_a/poses_gt.txt "$pathDatasetEuroc"/results/sigmoid_t2_a

# echo "Launching trans_t4_b with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/colon.yaml "$pathDatasetEuroc"/trans_t4_b "$pathDatasetEuroc"/trans_t4_b/poses_gt.txt "$pathDatasetEuroc"/results/trans_t4_b
done
#------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# echo "Launching sinus_2603 with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/endoscopy_2603.yaml "$pathDatasetEuroc"/_start_002603_end_002984_stride_1000_segment_00 "$pathDatasetEuroc"/_start_002603_end_002984_stride_1000_segment_00/poses_gt.txt sinus_2603

# echo "Launching sinus_3213 with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/endoscopy_3213.yaml "$pathDatasetEuroc"/_start_003213_end_003527_stride_1000_segment_00 "$pathDatasetEuroc"/_start_003213_end_003527_stride_1000_segment_00/poses_gt.txt sinus_3213

# echo "Launching sinus_4259 with Monocular sensor"
# ./Monocular/mono_mydata ../Vocabulary/ORBvoc.txt ./Monocular/endoscopy_4259.yaml "$pathDatasetEuroc"/_start_004259_end_004629_stride_1000_segment_00 "$pathDatasetEuroc"/_start_004259_end_004629_stride_1000_segment_00/poses_gt.txt sinus_4259

# echo "------------------------------------"
# echo "Evaluation of 2603 trajectory with Stereo sensor"
# python ../evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/_start_002603_end_002984_stride_1000_segment_00/poses_gt.txt f_sinus_2603.tum --plot sinus_2603.pdf --verbose --verbose2
# echo "------------------------------------"
# echo "Evaluation of 3213 trajectory with Stereo sensor"
# python ../evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/_start_003213_end_003527_stride_1000_segment_00/poses_gt.txt f_sinus_3213.tum --plot sinus_3213.pdf --verbose --verbose2
# echo "------------------------------------"
# echo "Evaluation of 4259 trajectory with Stereo sensor"
# python ../evaluation/evaluate_ate_scale.py "$pathDatasetEuroc"/_start_004259_end_004629_stride_1000_segment_00/poses_gt.txt f_sinus_4259.tum --plot sinus_4259.pdf --verbose --verbose2