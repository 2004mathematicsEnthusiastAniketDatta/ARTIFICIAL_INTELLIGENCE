def dfs(graph, start):
    visited = set()  # Set to keep track of visited nodes
    stack = [start]  # Initialize the stack with the start node

    while stack:
        node = stack.pop()  # Pop a node from the stack
        if node not in visited:
            print(node)  # Process the node (in this case, print it)
            visited.add(node)  # Mark the node as visited
            # Add all unvisited neighbors to the stack
            stack.extend(neighbor for neighbor in graph[node] if neighbor not in visited)

# Input graph and start node
def main():
    graph = {}
    print("Enter the graph as adjacency list (press Enter after each node):")
    while True:
        try:
            line = input().strip()
            if line == "":
                break
            node, *neighbors = line.split()
            graph[node] = neighbors
        except EOFError:
            break

    start_node = input("Enter the start node: ").strip()
    
    print("DFS Traversal:")
    dfs(graph, start_node)

if __name__ == "__main__":
    main()
