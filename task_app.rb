require_relative 'task'
require_relative 'task_repo'
require_relative 'task_controller'
require_relative 'router'

repository = TaskRepo.new
controller = TaskController.new(repository)
router = Router.new(controller)

router.run
