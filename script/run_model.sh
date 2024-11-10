PROJECT_ROOT='/home/hush/SemVII/course_work/Graph_Learning/project/xGCN'
ALL_DATA_ROOT='/home/hush/SemVII/course_work/Graph_Learning/project/data'

DEVICE='cuda:0'

DATASET='pokec'

MODEL='xgcn'

cd run_model

bash $MODEL'_'$DATASET'.sh' $PROJECT_ROOT $ALL_DATA_ROOT $DEVICE
