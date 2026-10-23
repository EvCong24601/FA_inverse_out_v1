def generate_verilog_netlist(netlist):
    verilog_netlist = ""
    for instance in netlist:
        module_type, instance_data = next(iter(instance.items()))
        module_name = instance_data['module_name']
        ports = instance_data['ports']
        port_connections = ', '.join(f".{port}({signal})" for port, signal in ports.items())
        verilog_netlist += f"{module_type} {module_name} ( {port_connections} );\n"

    return verilog_netlist


# Usage example:
netlist = [
    {'FA1D1BWP30P140HVT': {'module_name': 'intadd_41_U4',
                           'ports': {'A': 'sample_in[79]', 'B': 'sample_in[287]', 'CI': 'sample_in[399]',
                                     'CO': 'intadd_41_n3', 'S': 'intadd_30_B_2_'}}},
    {'FA1D1BWP30P140HVT': {'module_name': 'intadd_41_U3',
                           'ports': {'A': 'intadd_41_B_1_', 'B': 'intadd_41_A_1_', 'CI': 'intadd_41_n3',
                                     'CO': 'intadd_41_n2', 'S': 'intadd_30_A_3_'}}},
    {'FA1D1BWP30P140HVT': {'module_name': 'intadd_30_U5',
                           'ports': {'A': 'sample_in[141]', 'B': 'sample_in[381]', 'CI': 'sample_in[333]',
                                     'CO': 'intadd_30_n4', 'S': 'intadd_30_SUM_0_'}}},
    {'FA1D1BWP30P140HVT': {'module_name': 'intadd_30_U4',
                           'ports': {'A': 'intadd_30_B_1_', 'B': 'intadd_30_A_1_', 'CI': 'intadd_30_n4',
                                     'CO': 'intadd_30_n3', 'S': 'intadd_30_SUM_1_'}}},
    {'FA1D1BWP30P140HVT': {'module_name': 'intadd_30_U3',
                           'ports': {'A': 'intadd_30_B_2_', 'B': 'intadd_30_A_2_', 'CI': 'intadd_30_n3',
                                     'CO': 'intadd_30_n2', 'S': 'intadd_30_SUM_2_'}}},
    {'FA1D1BWP30P140HVT': {'module_name': 'intadd_30_U2',
                           'ports': {'A': 'intadd_30_B_3_', 'B': 'intadd_30_A_3_', 'CI': 'intadd_30_n2',
                                     'CO': 'intadd_30_n1', 'S': 'intadd_30_SUM_3_'}}},
    {'FA1D1BWP30P140HVT': {'module_name': 'intadd_38_U4',
                           'ports': {'A': 'sample_in[126]', 'B': 'sample_in[158]', 'CI': 'sample_in[14]',
                                     'CO': 'intadd_38_n3', 'S': 'intadd_38_SUM_0_'}}}
]

verilog_netlist = generate_verilog_netlist(netlist)
print(verilog_netlist)
