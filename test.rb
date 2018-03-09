require_relative 'task'
require_relative 'task_repo'

p a = Task.new('make')
p a.done!
p b = Task.new('eat')
p b.done?
