def find_modules_connected_to_signals(netlist, input_signals, current_module_name):
    signal_to_modules = []
    temp = {}
    for signal in input_signals:
        modules_with_signal = []
        count_input = 0
        len_netlist = len(netlist)
        for module in netlist:
            module_info = next(iter(module.values()))
            count_input += 1
            for port_name, port_signal in module_info['ports'].items():
                # print(module_info['module_name'])
                if (signal == port_signal) and (not module_info['module_name'] == current_module_name) \
                        and (port_name in {'CO', 'S', 'Q', 'ZN', 'Z'}):
                    modules_with_signal.append(module_info['module_name'])
                    modules_with_signal.append(port_name)
                    modules_with_signal.append(port_signal)
        # if count_input == len_netlist:
        # modules_with_signal.append('input')
        signal_to_modules.append({signal: modules_with_signal})

    return signal_to_modules