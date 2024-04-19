import queue
graph={}
def user_input():
    n=int(input("Enter the number of nodes: "))
    for _ in range(0,n):
        key=input("Enter the node: ").upper()
        elem=[]
        elem=input("Enter the adjacent nodes: ").split(",")
        graph[key]=elem
graph={}
def user_input():
    n=int(input("Enter the number of nodes: "))
    for _ in range(0,n):
        key=input("Enter the node: ").upper()
        elem=[]
        elem=input("Enter the adjacent nodes: ").split(",")
        graph[key]=elem
    return graph

    return graph
inp = user_input()
print(inp)
lst=[]
q = queue.Queue()  # Define the 'q' variable before using it
def bfs(graph,src,path=[]):
    
    q.put(src)
    while not q.empty():
        vertex=q.get()
        if vertex not in path:
            path=path+[vertex]
            q.queue.extend(graph[vertex])
            q=q+graph[vertex]
    return path
print(bfs(inp,'A'))
    
    

    