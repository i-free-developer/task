require_relative 'cookbook' # create this file
require_relative 'controller' # create this file
require_relative 'router' # create this file

csv_file = File.join(__dir__, 'recipes.csv')
cookbook = Cookbook.new(csv_file)
controller = Controller.new(cookbook)

router = Router.new(controller)

# start the app

router.run
