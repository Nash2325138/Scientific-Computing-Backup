hw = e^(-x^2)*sin(16*x)
plot(hw)
def find_all_root(hw, a, b, precise):
    roots = []
    for i in range(a*precise, b*precise):
        try:
            root = find_root(hw, i/precise, (i+1)/precise)
        except RuntimeError:
            continue
        if not root in roots:roots.append(root)
    return roots

roots = find_all_root(hw, -1, 1, 10)
print roots

