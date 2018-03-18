require_relative 'recipe'
require_relative 'view'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new # instance view from View class
  end

  def list
    # 1. get the recipes from the cookbook
    recipes = @cookbook.all # all is a method in Cookbook class
    # 2. give recipes to the view
    @view.print_recipes(recipes) # print_recipes is a method in View class
  end

  def create
    # 1. Ask the user for name
    name = @view.ask_for_recipe_name
    # 2. Ask the user for description
    description = @view.ask_for_recipe_description
    # 3. Create a new Recipe instance
    recipe = Recipe.new(name, description)
    # 4. Give this recipe to the cookbook
    @cookbook.add_recipe(recipe)
  end

  def destroy
    # 1. List the recipes
    list # a method in controller class / current class
    # 2. Ask the user for recipe index
    index = @view.ask_for_recipe_index # a method in View class
    # 3. Ask cookbook to remove recipe at specified index
    @cookbook.remove_recipe(index) # a method in Cookbook class
  end
end
