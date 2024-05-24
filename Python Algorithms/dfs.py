graph={}

def user_input():
    n = int(input("Enter the number of internal parent nodes with root node:"))
    for _ in range(n):
        key = input("Enter the node").upper()
        elem = input("Enter the nodes connected to the node").split(",")
        graph[key] = elem
    return graph
root = input("Enter the root node").upper()
visited = set()
def dfs(graph):
    if root not in visited:
        print(root)
        visited.add(root)
        for elem in graph[root]:
            dfs(graph, elem)
dfs_elements = dfs(graph)
print(dfs_elements)
            