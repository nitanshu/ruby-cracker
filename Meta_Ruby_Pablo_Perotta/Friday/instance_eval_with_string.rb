a = [1, 2, 3]
b = []
b.instance_eval('b << a[2]', __FILE__, __LINE__)
