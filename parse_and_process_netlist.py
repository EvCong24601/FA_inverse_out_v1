def parse_netlist(file_path, ref_list):
    netlist_dict = []

    with open(file_path, 'r') as file:
        lines = file.readlines()
        instance_lines = []
        list_new = []
        instance_name = None

        for line in lines:
            line = line.strip()

            if instance_name is None:
                if line.startswith(ref_list):
                    instance_name = line.split()[1]
                    instance_lines.append(line)
                    if line.endswith(';') and instance_lines:
                        netlist_dict.append(process_instance_lines(instance_lines))
                        list_new.append(''.join(instance_lines))
                        instance_lines = []
                else:
                    list_new.append(line)
            else:
                if line.endswith(';'):
                    instance_lines.append(line)
                    netlist_dict.append(process_instance_lines(instance_lines))
                    instance_name = None
                    list_new.append(''.join(instance_lines))
                    instance_lines = []
                else:
                    instance_lines.append(line)

    return netlist_dict, list_new

def process_instance_lines(lines):
    netlist_dict_line = {}
    instance_name = lines[0].split()[0]
    module_name = lines[0].split()[1]

    port_dict = {}
    lines = [''.join(lines)]
    for line in lines:
        line = line.strip(');')
        ports = line.strip('').split(',')
        ports = [element for element in ports if element]
        for port in ports:
            if instance_name in port:
                port = port.replace(instance_name, '').replace(module_name, '').strip().strip('(').strip()
            else:
                port = port.strip()
            port_name, signal = port.split('(', 1)
            port_name = port_name.strip(' .').strip('.')
            signal = signal.strip(')')
            port_dict[port_name] = signal.strip()

    netlist_dict_line[instance_name] = {
        'module_name': module_name,
        'ports': port_dict
    }
    return netlist_dict_line