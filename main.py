# This project is used to detect the potential full adder
# whose polarity of pin co and pin s can be inversed
# The format of the netlist is showed as follow:
#   FA1D0BWP30P140HVT intadd_65_U3 ( .A(intadd_65_B_5_), .B(intadd_63_SUM_3_),
#         .CI(intadd_65_n3), .CO(intadd_65_n2), .S(intadd_65_SUM_5_) );

import os
import re
import numpy as np
import w_and_rm_netlist as wnet
import parse_and_process_netlist as pp
import w_and_rm_netlist as wrm
import networkx as nx
from find_connected import find_modules_connected_to_signals


def inv_netlist_w(cell_name, new_input_signal, new_output_signal):
    template_code = 'INVD0BWP30P140HVT (.I(), .ZN());'
    pattern = r'(\w+)\s*\(\s*\.I\(\s*\)\s*,\s*\.ZN\(\s*\)\s*\);'
    # 使用正则表达式匹配
    matches = re.match(pattern, template_code)
    if matches:
        module_name = matches.group(1)
        # 构建新的字符串
        inv_ins = f'{module_name} {cell_name} (.I({new_input_signal}),.ZN({new_output_signal}));'
        # 打印新的字符串
        return inv_ins
    else:
        return False


def set_output_edge(g, next_nod, leve, output_pol):
    edge_group_nex = [n for n in g.edges() if n[0] == next_nod]
    for it3 in edge_group_nex:
        g.edges[it3[0], it3[1]]['inverse'] = output_pol
        if g.edges[it3[0], it3[1]]['output'] == 'CO':
            g.edges[it3[0], it3[1]]['level'] = leve + 1
            g.nodes[it3[0]]['level'] = leve
        elif g.edges[it3[0], it3[1]]['output'] == 'S':
            g.edges[it3[0], it3[1]]['level'] = leve
            g.nodes[it3[0]]['level'] = leve
    return leve


if __name__ == '__main__':
    # parser
    # module_name = 'e4_w16_fixed_adder_tree_1.5ns'
    # module_name = 'e2_w8_fixed_adder_tree'
    # module_name = 'e2_w4_fixed_adder_tree_1.5ns_all_auto'
    # module_name = 'e2_w16_fixed_adder_tree_1.5ns_all_auto'
    # module_name = 'e3_w4_fixed_adder_tree_1.5ns_all_auto'
    # module_name = 'e3_w8_fixed_adder_tree_1.5ns_all_auto'
    # module_name = 'e2_w8_fixed_adder_tree_pl'
    # module_name = 'e3_w16_fixed_adder_tree_1.5ns_all_auto'
    # module_name = 'e4_w4_fixed_adder_tree_1.5ns_all_auto'
    # module_name = 'e4_w8_fixed_adder_tree_1.5ns_all_auto'
    # module_name = 'e5_w4_fixed_adder_tree_2ns_all_auto'
    module_name = 'e5_w8_fixed_adder_tree_2ns_all_auto'
    # module_name = 'e5_w16_fixed_adder_tree_1.8ns_all_auto'
    # module_name = 'e6_w8_fixed_adder_tree_2ns_all_auto'
    # module_name = 'e5_w8_fixed_adder_tree_pl_fad1'
    # module_name = 'e5_w8_ripple_adder_tree'
    # module_name = 'e5_w8_ripple_adder_tree_1.5ns_all_auto_invo.v'
    sample_in_num = pow(2, int(module_name[1])) * int(module_name[4])
    bit_width = int(re.search(r'w(\d+)', module_name).group()[1:])
    exp_num = int(re.search(r'e(\d+)', module_name).group()[1:])
    psum_num = exp_num + bit_width
    inv_ref_name = 'INVD0BWP30P140HVT'
    reference = ('AN2D0BWP30P140HVT', 'AOI21D0P7BWP30P140HVT', 'DFCNQD1BWP30P140HVT',
                 'FA1D0BWP30P140HVT', 'IAO21D0BWP30P140HVT', 'IAO21D1BWP30P140HVT',
                 'INVD0BWP30P140HVT', 'ND3D0P7BWP30P140HVT', 'NR2D0BWP30P140HVT',
                 'OA21D0BWP30P140HVT', 'AOI21D0BWP30P140HVT', 'IAO21D1BWP30P140HVT',
                 'FA1D1BWP30P140HVT', 'FA1D1BW', 'FA1D0BW_INVERSE', 'FA_iNVERSE',
                 'DFCNQD1BWP30P140HVT')
    inverse_ref = ('FA1D0BW_INVERSE', 'FA1D0BWP30P140HVT', 'FA1D1BWP30P140HVT', 'FA1D1BW')
    file_name = ''.join([module_name, '.v'])
    abs_path = '/home/evcong/PycharmProjects/FA_inverse_out_v1/rtl'
    file_path = os.path.join(abs_path, file_name)
    # file_path = '/home/evcong/PycharmProjects/FA_inverse_out_v1/e5_w16_fixed_adder_tree.v'
    netlist, list_new = pp.parse_netlist(file_path, reference)
    print('print netlist as follows:')
    for item in netlist:
        print(item)

    num_fa = len(netlist)
    print('number of FA:', num_fa)
    print("finish loading data")

    # search potential full adder
    input_signals = {}
    output_signals = {'CO', 'S'}
    connected_signals = set()
    signal_to_modules = []
    signal_to_modules_re = []
    FA_replace = []
    port_type = []
    count = 0
    # Extract all connected signals
    # build the directed graph
    G = nx.DiGraph(name=module_name)
    for module in netlist:
        count += 1
        print("iteration count:", count)
        '''
        module.value
            module_name: cell name
            ports: port
        module.key: reference name
        '''
        module_info = next(iter(module.values()))
        refer_nm = next(iter(module.keys()))
        module_instance = module_info['module_name']
        # module_info {'A': 'intadd_110_n1', 'B': 'intadd_93_A_6_', 'CI': 'intadd_93_n14', 'CO': 'intadd_93_n13',
        # 'S': 'edge_nd_1030'}
        ports = module_info['ports']
        '''
        DFCNQD1BWP30P140HVT   : INPUT:D, CP, CDN; OUTPUT:Q
        FA1D0BWP30P140HVT     : INPUT:A, B, CI;   OUTPUT:CO,S
        AOI21D0P7BWP30P140HVT : INPUT:A1, A2, B;  OUTPUT:ZN
        ND3D0P7BWP30P140HVT   : INPUT:A1, A2, A3; OUTPUT:ZN
        NR2D0BWP30P140HVT     : INPUT:A1, A2;     OUTPUT:ZN
        OA21D0BWP30P140HVT    : INPUT:A1, A2, B;  OUTPUT:Z
        IAO21D0BWP30P140HVT   : INPUT:A1, A2, B;  OUTPUT:ZN
        AN2D0BWP30P140HVT     : INPUT:A1,A2;      OUTPUT:Z
        INVD0BWP30P140HVT     : INPUT:I;          OUTPUT:ZN
        '''
        if refer_nm == 'DFCNQD1BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'D'}
        elif refer_nm == 'FA1D0BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A', 'B', 'CI'}
        elif refer_nm == 'FA1D1BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A', 'B', 'CI'}
        elif refer_nm == 'FA1D1BW':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A', 'B', 'CI'}
        elif refer_nm == 'AOI21D0P7BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A1', 'A2', 'B'}
        elif refer_nm == 'ND3D0P7BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A1', 'A2', 'A3'}
        elif refer_nm == 'NR2D0BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A1', 'A2'}
        elif refer_nm == 'OA21D0BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A1', 'A2', 'B'}
        elif refer_nm == 'IAO21D0BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A1', 'A2', 'B'}
        elif refer_nm == 'IAO21D1BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A1', 'A2', 'B'}
        elif refer_nm == 'AN2D0BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'A1', 'A2'}
        elif refer_nm == 'INVD0BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            # G.add_node(module_instance, ref_name=refer_nm, inout_ports=ports)
            input_signals = {'I'}
        elif refer_nm == 'AOI21D0BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            input_signals = {'A1', 'A2', 'B'}
        elif refer_nm == 'CKND2D1BWP30P140HVT':
            G.add_node(count, cell_name=module_instance, ref_name=refer_nm, inout_ports=ports, level=-1)
            input_signals = {'A1', 'A2'}

        connected_signals.update(set(ports[key] for key in input_signals if key in ports))
        # connected_signals {'intadd_110_n1', 'intadd_93_A_6_', 'intadd_93_n14'} the input signal name of the given
        # module
        signal_to_modules = find_modules_connected_to_signals(netlist, connected_signals, module_instance)

        for item2 in signal_to_modules:
            tmp = next(iter(item2.values()))
            tmp_key = next(iter(item2.keys()))
            # if [{'intadd_106_CI': []}, {'sample_in[32]': []}, {'sample_in[0]': []}]
            # write input to the port name
            if tmp:
                port_type.append(tmp[1])
                signal_to_modules_re.append(item2)
            else:
                port_type.append('input')
                signal_to_modules_re.append({tmp_key: ['input_port', 'input_wire']})
        current_node = [module_instance, count]
        connect_node = []
        # FA_replace.append([module_instance, count, port_type])
        # find the former module name
        form_tmp = [[value[0], value[1]] for item in signal_to_modules_re for value in item.values()]
        input_tmp = [value for item in signal_to_modules_re for value in item.keys()]
        # [{'intadd_112_n3': ['intadd_112_U4', 'CO']}, {'intadd_112_B_1_': ['U63', 'CO']}, {'sample_in[143]': ['input_port', 'input_wire']}]
        for item in signal_to_modules_re:
            tmp_items_val = np.ravel(list(item.values()))
            tmp_items_key = np.ravel(list(item.keys()))
            if tmp_items_val[0] == 'input_port':
                connect_node.append([tmp_items_key[0], 'input'])
            else:
                connect_node.append(np.ravel(list(item.values())))
        FA_replace.append([current_node, connect_node])
        port_type = []
        signal_to_modules_re = []
        connected_signals.clear()

    # Now the FA_replace store the complete connection relationship of the Graph
    test = nx.get_node_attributes(G, 'ref_name')
    inout = nx.get_node_attributes(G, 'inout_ports')
    log_output_file = ''.join([module_name, '_tot_rpt', '.v'])
    log_output_path = os.path.join(abs_path, log_output_file)
    with open(log_output_path, "w") as file:
        print("detailed information of these adders are showed as follow:", file=file)
    fa_rpt_nm = ''.join([module_name, '_fa_rpt', '.v'])
    fa_rpt_path = os.path.join(abs_path, fa_rpt_nm)
    wnet.write_verilog_netlist_to_file(FA_replace, fa_rpt_path)

    '''
    在电路当中，一般都是输入节点指向输出节点
    但最终输出p_sum_reg作为根节点更便于遍历整个树
    '''
    # build the edge
    for item in FA_replace:
        cell_name = item[0][0]
        node_count = item[0][1]
        input_num = item[0][1]
        flag = 1
        for edge in item[1]:
            edge_start = edge[0]
            tmp = edge[1]
            if edge[1] != 'input':
                output_num = [n for n, d in G.nodes(data=True) if d['cell_name'] == edge_start]
                output_num = output_num[0]
                G.add_edge(output_num, input_num, edge_name=edge[2], output=edge[1], level=-1, inverse=-1, inverter=0)

    # tmp_reg[0]: node number of cell_name: 'sample_in_reg_9_' 15
    # next: tmp_reg[0] point to 62
    '''
    找到与输入相连的cell
    stored in the list：sample_in_con_node
    将所有直接与输入相连的cell的level,inverse属性初始化
    '''

    sample_in_con_node = []
    for i in range(0, sample_in_num):
        level = i % bit_width
        start_name = 'sample_in_reg_' + str(i) + '_'
        start_node = [n for n, d in G.nodes(data=True) if d['cell_name'] == start_name]
        next_node = list(G.successors(start_node[0]))
        G.nodes[start_node[0]]['level'] = level
        for next in next_node:
            G.edges[start_node[0], next]['level'] = level
            G.edges[start_node[0], next]['inverse'] = 0
        if next_node[0] not in sample_in_con_node:
            sample_in_con_node.append(next_node[0])
        # edge_con = G.edges[start_node[0], next_node[0]]['edge_name']
        # edge_pin = G.edges[start_node[0], next_node[0]]['output']
    '''
    nodes_with_level_0 = [node for node, attr in G.nodes(data=True) if attr['level'] == 0]
    nodes_with_level_1 = [node for node, attr in G.nodes(data=True) if attr['level'] == 1]
    nodes_with_level_2 = [node for node, attr in G.nodes(data=True) if attr['level'] == 2]
    nodes_with_level_3 = [node for node, attr in G.nodes(data=True) if attr['level'] == 3]

    nodes_with_level_4 = [node for node, attr in G.nodes(data=True) if attr['level'] == 4]
    nodes_with_level_5 = [node for node, attr in G.nodes(data=True) if attr['level'] == 5]
    nodes_with_level_6 = [node for node, attr in G.nodes(data=True) if attr['level'] == 6]
    nodes_with_level_7 = [node for node, attr in G.nodes(data=True) if attr['level'] == 7]
    '''

    # 是否还有inverse没有表上的
    edges_with_inverse_minus_one = [(u, v) for u, v, attrs in G.edges(data=True) if
                                    'inverse' in attrs and attrs['inverse'] == -1]

    while len(edges_with_inverse_minus_one) > 0:
        edges_with_inverse_minus_one = [(u, v) for u, v, attrs in G.edges(data=True) if
                                        'inverse' in attrs and attrs['inverse'] == -1]
        for i in range(0, sample_in_num):
            level = i % bit_width
            start_name = 'sample_in_reg_' + str(i) + '_'
            start_node = [n for n, d in G.nodes(data=True) if d['cell_name'] == start_name]
            sub_graph = nx.bfs_tree(G, source=start_node[0])
            # 以start_node[0]为起点初始化搜索路径
            sub_graph_edge = list(sub_graph.edges())
            for item in sub_graph_edge:
                current_node = item[0]
                next_node = item[1]
                # level = G.edges[current_node, next_node]['level']
                # edge_group 同样以next_node为终点的边的集合
                edge_group = [n for n in G.edges() if n[1] == next_node]
                inverse_group = []
                for item2 in edge_group:
                    tmp_level = G.edges[item2[0], item2[1]]['level']
                    if tmp_level > 0:
                        level = tmp_level
                for item_2 in edge_group:
                    # edge_group当中，所有边和节点拥有相同的level
                    # edge_group当中level不是-1的
                    G.edges[item_2[0], item_2[1]]['level'] = level
                    G.nodes[item_2[0]]['level'] = level
                    inverse_group.append(G.edges[item_2[0], item_2[1]]['inverse'])
                next_ref = G.nodes[next_node]['ref_name']
                if -1 not in inverse_group:
                    if next_ref in inverse_ref:
                        # 所有与next_node节点连接的边的极性状态已知，并且经过反向节点
                        # 少数服从多数原则，置位inverter属性
                        all_one = all(elem == 1 for elem in inverse_group)
                        all_zero = all(elem == 0 for elem in inverse_group)
                        if inverse_group.count(0) == 2 and inverse_group.count(1) == 1:
                            output_polar = 1
                            inverter_index = inverse_group.index(min(set(inverse_group), key=inverse_group.count))
                            G.edges[edge_group[inverter_index][0], edge_group[inverter_index][1]]['inverter'] = 1
                            G.edges[edge_group[inverter_index][0], edge_group[inverter_index][1]]['inverse'] = 0
                            level = set_output_edge(G, next_node, level, output_polar)
                        elif inverse_group.count(1) == 2 and inverse_group.count(0) == 1:
                            output_polar = 0
                            inverter_index = inverse_group.index(min(set(inverse_group), key=inverse_group.count))
                            G.edges[edge_group[inverter_index][0], edge_group[inverter_index][1]]['inverter'] = 1
                            G.edges[edge_group[inverter_index][0], edge_group[inverter_index][1]]['inverse'] = 1
                            level = set_output_edge(G, next_node, level, output_polar)
                        elif all_one:
                            output_polar = 0
                            level = set_output_edge(G, next_node, level, output_polar)
                        elif all_zero:
                            output_polar = 1
                            # 设置以next_node为起点的相连的边的level和inverse
                            # CO & S port相连的边的inverse状态相同
                            # CO边的level +1 S边的level不变
                            level = set_output_edge(G, next_node, level, output_polar)
                    else:
                        output_polar = inverse_group[0]
                        edge_group_next = [n for n in G.edges() if n[0] == next_node]
                        for item3 in edge_group_next:
                            G.edges[item3[0], item3[1]]['inverse'] = output_polar
                            G.nodes[item3[0]]['level'] = level
                else:
                    pass
                    # next_node当中有未知状态的节点, 当前sub_graph走不通
                    # 为了不卡住还是别break
                    # break
        pass
    pass
    # 查找所有与输出节点相连的边，inverse属性为1的，inverter置位
    for i in range(0, psum_num):
        psum_name = 'psum_reg_' + str(i) + '_'
        psum_node = [n for n, d in G.nodes(data=True) if d['cell_name'] == psum_name]
        psum_edge = [n for n in G.edges() if n[1] == psum_node[0]][0]
        if G.edges[psum_edge[0], psum_edge[1]]['inverse'] == 1:
            G.edges[psum_edge[0], psum_edge[1]]['inverter'] = 1

    # 将每一条edge当中的inverse属性打印出来
    inv_count = 0
    wire_declar = 'wire '
    template_code = 'INVD0BWP30P140HVT (.I(),.ZN());'
    inv_netlist = []
    replace_info = []

    # 新增wire声明，inv声明
    # 需要替换wire的cell名称和wire_edge存在replace_infro中
    for u, v, attr in G.edges(data=True):
        if attr.get('inverter', None) == 1:
            print('(', u, ',', v, ')')
            start_node = G.nodes[u]['cell_name']
            stop_node = G.nodes[v]['cell_name']
            inv_input_wire = attr.get('edge_name', None)
            # print('signal_name:', inv_input_wire)
            # print('inverse:', attr.get('inverse', None))
            # print('inverter:', attr.get('inverter', None))
            # print('level:', attr.get('level', None))
            inv_name = 'inv_' + str(inv_count) + '_'
            inv_output_wire = start_node + '_' + stop_node
            replace_info.append([stop_node, inv_input_wire, inv_output_wire])
            wire_declar = wire_declar + inv_output_wire + ','
            new_inv_nl = inv_netlist_w(inv_name, inv_input_wire, inv_output_wire)
            inv_netlist.append(new_inv_nl)
            inv_count = inv_count + 1
    # INV命名规则 inv_i_
    # (416,257)
    # print(G.edges[416, 257]['level'])
    print('The number of inverter:', inv_count)  # 84.57%
    wire_declar = wire_declar[:-2] + ';'
    '''
        关于怎么加inverter的问题
        wire的声明里加新的wire
        单独开一行 wire a,b,c,d;
        'inverter'属性为1的signal_wire作为inv的input_wire,
        output_wire命名 -> inverter_name_output_name
        INVD0BWP30P140HVT INV_i_ ( .I(input_wire), .ZN(output_wire) );
        start_node的cell一切不变
        原来stop_node的cell中intput与signal_wire相连的wire改成output_wire
        例外出现在最后一集输出级上面，
        start_node的输出改变，stop_node不变，保证module输出的正确
    '''
    pass
    # 声明写在一行里面
    rm_fa_list = wrm.replace_fa_module(list_new, wire_declar, replace_info, inv_netlist)
    neo_file_name = ''.join([module_name, '_neo', '.v'])
    neo_file_path = os.path.join(abs_path, neo_file_name)
    wnet.write_verilog_netlist_to_file(rm_fa_list, neo_file_path)
'''
    # write the information of the target fa
    dup_fa_list_twice, dup_fa_list_thrice, dup_fa_list_once = dp.find_duplicate_names(FA_replace)
    with open(log_output_path, "a") as file:
        print(len(dup_fa_list_once), "FAs showed once", file=file)
        for item in dup_fa_list_once:
            print(item, file=file)
        print(len(dup_fa_list_twice), "FAs showed twice", file=file)
        for item in dup_fa_list_twice:
            print(item, file=file)
        print(len(dup_fa_list_thrice), "FAs showed thrice", file=file)
        for item in dup_fa_list_thrice:
            print(item, file=file)
    fa_rpt_nm_ref = ''.join([module_name, '_fa_rpt_ref', '.v'])
    fa_rpt_path_ref = os.path.join(abs_path, fa_rpt_nm_ref)
    wnet.write_verilog_netlist_to_file(FA_replace, fa_rpt_path_ref)

    FA_replace = dp.merge_module_ports(FA_replace, dup_fa_list_thrice)
    dup_fa_list, _, _ = dp.find_duplicate_names(FA_replace)
    with open(log_output_path, "a") as file:
        print(len(FA_replace), 'of', num_fa, 'FA can be replaced', file=file)
        print(len(dup_fa_list), "FAs showed more than once", file=file)
        for item in dup_fa_list:
            print(item, file=file)

    # create a new modified netlist
    neo_file_name = ''.join([module_name, '_neo', '.v'])
    neo_file_path = os.path.join(abs_path, neo_file_name)
    # remove all inversed module
    rm_fa_list, inv_num_rm, inv_all, inv_s, inv_co = wrm.replace_module_declarations(file_path, FA_replace)
    # remove single inversed module
    wnet.write_verilog_netlist_to_file(rm_fa_list, neo_file_path)
    # missing defined name for input wire
    fa_remain = num_fa - inv_co - inv_s - inv_all
    o_power = num_fa * 246.27 / 1000
    opt_power = (fa_remain * 246.27 + inv_co * 214 + inv_all * 145.33 + inv_s * 176.66) / 1000
    with open(log_output_path, "a") as file:
        print('total removed inverter:', inv_num_rm, 'of', num_fa * 2, file=file)
        print('Cadence Transition Simulation')
        print('total removed inverter_all:', inv_all, ' portion:', inv_all * 0.31 / num_fa, file=file)
        print('total removed inverter_s:', inv_s, ' portion:', inv_s * 0.18 / num_fa, file=file)
        print('total removed inverter_co:', inv_co, ' portion:', inv_co * 0.146 / num_fa, file=file)
        print('total power reduction estimation:', (inv_co * 0.146 + inv_s * 0.18 + inv_all * 0.31) / num_fa, file=file)
        print('Design Compiler Power Simulation')
        print('Original Power:', o_power, 'uW', file=file)
        print('Optimized Power:', opt_power, 'uW', file=file)
    print('finish')
    
'''
