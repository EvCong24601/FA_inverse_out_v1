def write_verilog_netlist_to_file(verilog_netlist, file_path):
    if isinstance(verilog_netlist, str):
        # If verilog_netlist is a string, write it directly to the file
        with open(file_path, 'w') as file:
            file.write(verilog_netlist)
    elif isinstance(verilog_netlist, list):
        # If verilog_netlist is a list, write each line to the file
        with open(file_path, 'w') as file:
            for line in verilog_netlist:
                file.write(str(line) + '\n')
    elif isinstance(verilog_netlist, dict):
        with open(file_path, 'w') as file:
            for key, value in verilog_netlist.items():
                file.write(str(key) + ': ' + str(value) + '\n')
    else:
        # Invalid data type
        raise ValueError("Invalid input type. Expected str or list.")


def replace_module_declarations(file_path, module_list):
    result = []
    num_inv_rm = 0
    num_inv_all = 0
    num_inv_s = 0
    num_inv_co = 0
    detailed_info = []
    modules_to_delete = [module[0] for module in module_list]
    with open(file_path, 'r') as file:
        lines = file.readlines()
        for line in lines:
            line = line.strip()
            if line.startswith('FA1D0BWP30P140HVT') or line.startswith('FA1D1BWP30P140HVT'):
                module_name = line.split()[1]
                if module_name not in modules_to_delete:
                    result.append(line)
                else:
                    # there are three cases needed to be treated differently
                    # ['U79' 'S']
                    # ['U71' 'CO']
                    # ['U82', 236, ['S', 'S', 'S']]
                    for item in module_list:
                        if item[0] == module_name:
                            detailed_info = item
                    if len(detailed_info[-1]) >= 3:
                        line_tmp = line.replace('FA1D0BWP30P140HVT', 'FA_INVERSE').replace('FA1D1BWP30P140HVT',
                                                                                           'FA_INVERSE')
                        result.append(line_tmp)
                        num_inv_rm += 2
                        num_inv_all += 1
                    elif detailed_info[-1] == 'S':
                        line_tmp = line.replace('FA1D0BWP30P140HVT', 'FA_INVERSE_S').replace('FA1D1BWP30P140HVT',
                                                                                             'FA_INVERSE_S')
                        result.append(line_tmp)
                        num_inv_rm += 1
                        num_inv_s += 1
                    elif detailed_info[-1] == 'CO':
                        line_tmp = line.replace('FA1D0BWP30P140HVT', 'FA_INVERSE_CO').replace('FA1D1BWP30P140HVT',
                                                                                              'FA_INVERSE_CO')
                        result.append(line_tmp)
                        num_inv_rm += 1
                        num_inv_co += 1
                    elif detailed_info[-1] == ['S', 'CO'] or detailed_info[-1] == ['CO', 'S']:
                        line_tmp = line.replace('FA1D0BWP30P140HVT', 'FA_INVERSE').replace('FA1D1BWP30P140HVT',
                                                                                           'FA_INVERSE')
                        result.append(line_tmp)
                        num_inv_rm += 2
                        num_inv_all += 1
            else:
                result.append(line)
    return result, num_inv_rm, num_inv_all, num_inv_co, num_inv_s
'''
            if instance_name is None:
                if line.startswith(ref_list):
                    instance_name = line.split()[1]
                    instance_lines.append(line)
                    if line.endswith(';') and instance_lines:
                        netlist_dict.append(process_instance_lines(instance_lines))
                        instance_lines = []
            else:
                if line.endswith(';'):
                    instance_lines.append(line)
                    netlist_dict.append(process_instance_lines(instance_lines))
                    instance_name = None
                    instance_lines = []
                else:
                    instance_lines.append(line)


'''

def replace_fa_module(list_new, incre_wire, replace_info, inv_list):
    # replace_info[module_name, original_wire, replaced_wire]
    result = []
    first_wire = 0
    for line in list_new:
        line = str(line)
        line_split = line.split()
        module_name_check = [item[0] for item in replace_info]
        if len(line_split) > 2:
            if line_split[1] in module_name_check:
                if line.startswith('FA1D0BWP30P140HVT') or line.startswith('FA1D1BWP30P140HVT'):
                    for item1 in replace_info:
                        if line_split[1] == item1[0]:
                            line_tmp = line.replace(item1[1], item1[2])
                            line_tmp = line_tmp.replace('FA1D0BWP30P140HVT', 'FA_INVERSE').replace('FA1D1BWP30P140HVT',
                                                                                                   'FA_INVERSE')
                            result.append(line_tmp)
                else:
                    for item2 in replace_info:
                        if line_split[1] == item2[0]:
                            line_tmp = line.replace(item2[1], item2[2])
                            result.append(line_tmp)
            elif line.startswith('FA1D0BWP30P140HVT') or line.startswith('FA1D1BWP30P140HVT'):
                # 替换fa
                line_tmp = line.replace('FA1D0BWP30P140HVT', 'FA_INVERSE').replace('FA1D1BWP30P140HVT',
                                                                                   'FA_INVERSE')
                result.append(line_tmp)
            elif line.startswith('wire') and (not first_wire):
                # 插入wire声明
                result.append(incre_wire)
                result.append(line)
                first_wire = 1
            else:
                # 其他
                result.append(line)
        else:
            if line.startswith('endmodule'):
                result.extend(inv_list)
                result.append(line)
            else:
                result.append(line)
    return result
