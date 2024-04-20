import queue
graph = {}

def user_input() -> dict:
    n = int(input("Enter the number of nodes: "))
    for _ in range(n):
        key = input("Enter the node: ").upper()
        elem = input("Enter the adjacent nodes: ").split(",")
        graph[key] = elem
    return graph

inp = user_input()
print(inp)

visited = []
queue = list()
node = input("Enter the starting node: ").upper()

def bfs(visited: list[str], graph: dict, node: str) -> None:
    queue = []  # Move the definition of the queue variable here
    visited.append(node)
    queue.append(node)
    while queue:
        m = queue.pop(0)
        print(m, end=" ")
        
        for neighbor in graph[m]:
            if neighbor not in visited:
                visited.append(neighbor)
                queue.append(neighbor)
                
print("Following is the Breadth-First Search")
bfs(visited, inp, node)
bfs(visited,inp, node)
    
    
    
    