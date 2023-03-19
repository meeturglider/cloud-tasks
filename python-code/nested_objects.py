def get_value(find, key):
    if key in find:
        return find[key]
    for a, b in find.items():
        if not isinstance(b, dict):
            continue
        item = get_value(b, key)
        if item is not None:
            return item

find = {'parent': {'first_val': 'one', 'second_val': 'two', 'nested_val': {'third_val': 'three'}}}
key = 'third_val'
print(get_value(find, key))
