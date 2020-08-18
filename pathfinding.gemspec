Gem::Specification.new do |s|
  s.name        = 'pathfinding'
  s.version     = '0.0.1'
  s.license     = 'MIT'
  s.summary     = 'A pathfinding library based on A* algorithm.'
  s.description = <<-DESCRIPTION
    A pathfinding library based on A* algorithm.
    Different options about heuristic and diagonal movements can be used.
    The grid can be printed in the command prompt.
  DESCRIPTION
  s.author      = 'Quentin Deschamps'
  s.email       = 'quentindeschamps18@gmail.com'
  s.homepage    = 'https://github.com/Quentin18/pathfinding.rb'

  s.require_paths = ['lib']
  s.files = [
    'lib/pathfinding.rb',
    'lib/pathfinding/core/diagonal_movement.rb',
    'lib/pathfinding/core/grid.rb',
    'lib/pathfinding/core/heuristic.rb',
    'lib/pathfinding/core/node.rb',
    'lib/pathfinding/finder/astar.rb',
    'LICENSE',
    'README.md',
    'pathfinding.gemspec'
  ]

  s.rdoc_options = ['--main', 'README.md']
  s.extra_rdoc_files = ['LICENSE', 'README.md']

  s.post_install_message = 'Thanks for installing!'
end
