# Pathfinding in Ruby

A pathfinding library in Ruby based on A* algorithm.

Inpired by [python-pathfinding](https://github.com/brean/python-pathfinding)

## Install
To install the library, use the `gem` command:
```
gem install pathfinding
```

## Usage
This is a simple example to find a path using A*.

1. Import the library:
```ruby
require 'pathfinding'
```
2. Create a map using a 2D-list. Any value smaller or equal to 0 describes a walkable node. Any number bigger than 0 describes an obstacle. In this example, we added an obstacle in the middle.
```ruby
matrix = [
  [0, 0, 0],
  [0, 1, 0],
  [0, 0, 0]
]
```
Note: you can use negative values to describe different types of obstacles.

3. Create a new grid from this map representation. This will create Nodes instances for every element of the map.
```ruby
grid = Grid.new(matrix)
```

4. Set the start and end point from the map. In this example, the start point is on top-left and the end point is on bottom-right.
```ruby
start_node = grid.node(0, 0)
end_node = grid.node(2, 2)
```

5. Create a new instance of the finder and run the `find_path` method. If a path from start to the end point exists, this method returns the list of nodes of the path. Else, it returns an empty list.
```ruby
finder = AStarFinder.new()
path = finder.find_path(start_node, end_node, grid)
```
Note:

- You can choose the heuristic function to use using the `heuristic` argument.
- You can also choose the diagonal movements allowed using the `diagonal_movement` argument.
```ruby
finder = AStarFinder.new(Heuristic::method(:manhattan), DiagonalMovement::NEVER)
```
See the [documentation](https://www.rubydoc.info/gems/pathfinding/0.0.1) for more details.

6. Print the result (or do something else with it).
```ruby
puts grid.to_s(path, start_node, end_node)
```
The result should look like this:
```
+---+
|sxx|
| #x|
|  e|
+---+
```
* +, - and | characters show the border around the map
* the blank space is a free field
* 's' marks the start
* 'e' marks the end
* '#' is the obstacle
* the 'x' characters mark the path from start to end

This is the whole example:
```ruby
require 'pathfinding'

matrix = [
  [0, 0, 0],
  [0, 1, 0],
  [0, 0, 0]
]
grid = Grid.new(matrix)

start_node = grid.node(0, 0)
end_node = grid.node(2, 2)

finder = AStarFinder.new()
path = finder.find_path(start_node, end_node, grid)

puts grid.to_s(path, start_node, end_node)
```

Take a look at the `examples/` folder for more examples.

## Links
- GitHub: https://github.com/Quentin18/pathfinding.rb
- RubyGems: https://rubygems.org/gems/pathfinding
- Documentation: https://www.rubydoc.info/gems/pathfinding/0.0.1

## Author
[Quentin Deschamps](mailto:quentindeschamps18@gmail.com)

## License
[MIT](https://choosealicense.com/licenses/mit/)
