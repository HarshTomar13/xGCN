PROJECT_ROOT='/home/hush/SemVII/course_work/Graph_Learning/project/xGCN'
ALL_DATA_ROOT='/home/hush/SemVII/course_work/Graph_Learning/project/data'

cd process_data

DATASET='cora'

bash handle_edge_list_txt.sh $PROJECT_ROOT $ALL_DATA_ROOT $DATASET

bash handle_src_pos_neg_eval_set.sh $PROJECT_ROOT $ALL_DATA_ROOT $DATASET

bash handle_adj_eval_set.sh $PROJECT_ROOT $ALL_DATA_ROOT $DATASET

# bash run_ppr.sh $PROJECT_ROOT $ALL_DATA_ROOT $DATASET

# bash prepare_ultragcn_data.sh $PROJECT_ROOT $ALL_DATA_ROOT $DATASET
