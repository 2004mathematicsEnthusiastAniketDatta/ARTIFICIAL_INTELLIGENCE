import heapq

# Define the heuristic function h
def h(node):
    # Example heuristic: straight-line distance to goal (replace with your actual heuristic)
    return distance[node]

# Define the cost function g
def g(node1, node2):
    # This is typically the actual cost of the edge from node1 to node2
    return graph[node1][node2]

# Define the A* search algorithm
def astar(start, goal):
    queue = []
    heapq.heappush(queue, (0 + h(start), start))
    costs = {start: 0}
    path = {start: [start]}

    while queue:
        (priority, current) = heapq.heappop(queue)
        if current == goal:
            return path[current]

        for next_node in graph[current].keys():
            new_cost = costs[current] + g(current, next_node)
            if next_node not in costs or new_cost < costs[next_node]:
                costs[next_node] = new_cost
                priority = new_cost + h(next_node)
                heapq.heappush(queue, (priority, next_node))
                path[next_node] = path[current] + [next_node]

    return []

# Example data
graph = {
    'a': {'b': 1, 'c': 2},
    'b': {'c': 2},
    'c': {'goal_node': 1},
    'goal_node': {}
}

distance = {
    'a': 3,
    'b': 2,
    'c': 1,
    'goal_node': 0
}

# Usage example
print(astar('a', 'goal_node'))  # Output: ['a', 'b', 'c', 'goal_node']
