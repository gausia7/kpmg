def get_nested_value(obj, key):
    keys = key.split('/')
    value = obj

    try:
        for k in keys:
            value = value[k]
        return value
    except KeyError:
        return None
