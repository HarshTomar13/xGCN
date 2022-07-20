from model.Node2vecWrapper import Node2vecWrapper
from model.LightGCN import LightGCN
from model.xGCN import xGCN
from model.UltraGCN.UltraGCN import UltraGCN
from model.SimpleX import SimpleX
from model.PPRGo import PPRGo
from model.GraphSAGE import GraphSAGE
from model.GAT import GAT
from model.GIN import GIN
from model.Block_LightGCN import Block_LightGCN
from model.Block_SimpleX import Block_SimpleX


def build_model(config, data):
    model = {
        'node2vec': Node2vecWrapper,
        'lightgcn': LightGCN,
        'block_lightgcn': Block_LightGCN,
        'block_simplex': Block_SimpleX,
        'xgcn': xGCN,
        'ultragcn': UltraGCN,
        'simplex': SimpleX,
        'pprgo': PPRGo,
        'graphsage': GraphSAGE,
        'gat': GAT,
        'gin': GIN,
    }[config['model']](config, data)
    
    data['model'] = model
    
    return model
