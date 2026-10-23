import networkx as nx

# 创建一个简单的图
G = nx.Graph()
G.add_edges_from([(1, 2), (1, 3), (2, 3), (2, 4)])

# 获取节点1的相邻节点
neighbors_of_node_1 = list(G.neighbors(1))

# 打印结果
print("节点1的相邻节点：", neighbors_of_node_1)