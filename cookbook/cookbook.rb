require 'csv'
require_relative 'recipe'

class Cookbook
  def initialize(csv_file)
    @csv_file = csv_file

    @recipes = [] # create an empty array when initialize

    load_csv # a method

  end

  def all # a method used in controller
    return @recipes
  end
end
