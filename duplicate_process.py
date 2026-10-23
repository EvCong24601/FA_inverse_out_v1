import numpy as np


def find_duplicate_names(my_list):
    name_count = {}
    duplicate_names_twice = []
    duplicate_names_thrice = []
    duplicate_names_once = []
    for item_dup in my_list:
        name = item_dup[0]
        if name in name_count:
            name_count[name] += 1
        else:
            name_count[name] = 1

    for name, count_dup in name_count.items():
        if 1 < count_dup < 3:
            duplicate_names_twice.append(name)
        elif count_dup == 3:
            duplicate_names_thrice.append([name, count_dup])
        elif count_dup == 1:
            duplicate_names_once.append(name)
    return duplicate_names_twice, duplicate_names_thrice, duplicate_names_once


# ['intadd_111_U5', 11, ['S', 'S', 'S']]
# ['intadd_111_U5' 'S']
# ['intadd_111_U5' 'C0']
# find the duplicated list
# check list[-1] for each
# group defined the relationship
# intersection union complementary
#
def merge_module_ports(module_list, module_thrice):
    merged_list = []
    module_dict = {}
    # module_thrice_name = [name_thrice for item in module_thrice: name_thrice.append(item[1])]
    name_thrice = [item[0] for item in module_thrice]
    for module in module_list:
        module_name = module[0]
        port_names = module[-1]
        if module_name in module_dict and module_name not in name_thrice:
            old_port_name = module_dict[module_name]
            new_port_name = port_names
            if len(old_port_name) == 3:
                if old_port_name == ['CO', 'CO', 'CO'] and new_port_name == 'CO':
                    port_names = 'S'
                elif old_port_name == ['S', 'S', 'S'] and new_port_name == 'S':
                    port_names = 'CO'
                elif old_port_name == ['CO', 'CO', 'CO'] and new_port_name == 'S':
                    port_names = 'CO'
                elif old_port_name == ['S', 'S', 'S'] and new_port_name == 'CO':
                    port_names = 'S'
                module_dict[module_name] = port_names
            elif len(new_port_name) == 3:
                if new_port_name == ['CO', 'CO', 'CO'] and old_port_name == 'CO':
                    port_names = 'S'
                elif new_port_name == ['S', 'S', 'S'] and old_port_name == 'S':
                    port_names = 'CO'
                elif new_port_name == ['CO', 'CO', 'CO'] and old_port_name == 'S':
                    port_names = 'CO'
                elif new_port_name == ['S', 'S', 'S'] and old_port_name == 'CO':
                    port_names = 'S'
                module_dict[module_name] = port_names
            elif not len(old_port_name) == 3 and not len(new_port_name) == 3:
                port_names = [old_port_name, new_port_name]
                module_dict[module_name] = port_names
            # print(port_names)
        elif module_name not in name_thrice:
            module_dict[module_name] = port_names

    for module_name, port_names in module_dict.items():
        merged_list.append([module_name, port_names])

    return merged_list
