require 'pathfinding'

matrix = [
  [0, 0, 0, 0, 0],
  [1, 0, 1, 1, 0],
  [1, 0, 1, 0, 0],
  [0, 1, 0, 0, 0],
  [1, 0, 1, 1, 0],
  [0, 0, 1, 0, 0]
]
grid = Grid.new(matrix)

start_node = grid.node(1, 1)
end_node = grid.node(4, 4)

# See what append if you change the arguments of the finder
finder = AStarFinder.new(Heuristic::method(:manhattan), DiagonalMovement::NEVER)
path = finder.find_path(start_node, end_node, grid)

puts grid.to_s(path, start_node, end_node)
puts path
