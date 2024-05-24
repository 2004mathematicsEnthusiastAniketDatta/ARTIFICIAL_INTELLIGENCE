#Breadth First Search

graph = {} #graph to store the input graph

def user_input():
    n = int(input("Enter the number of internal parent nodes with root node(except the leaf nodes): "))
    for _ in range(n):
        key = input("Enter the node: ").upper()
        elem = input("Enter the nodes connected to the node (comma-separated): ").split(",")
        graph[key] = [e.strip().upper() for e in elem]
    return graph

user_input() 
print(graph)

root = input("Enter the root node: ").upper()
visited = []  # List for visited nodes.
queue = []    # Initialize a queue

def bfs(visited, graph, node):  # Function for BFS
    visited.append(node)
    queue.append(node)

    while queue:  # Creating loop to visit each node
        m = queue.pop(0)
        print(m, end=" ")

        for neighbour in graph.get(m, []):  # Ensure it handles nodes with no neighbors
            if neighbour not in visited:
                visited.append(neighbour)
                queue.append(neighbour)

# Driver Code
# Call the function to populate the graph
print("Following is the Breadth-First Search")
bfs(visited, graph, root)  # Function calling
