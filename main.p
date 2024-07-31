def permute(s):
    if len(s) == 1:
        return [s]
    permutations = []
    for i, char in enumerate(s):
        for perm in permute(s[:i] + s[i+1:]):
            permutations.append(char + perm)
    return permutations

