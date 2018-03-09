class Task
  attr_reader :description
  def initialize(description)
    @description = description
    @done = false
  end

  def done?
    @done
  end

  def done!
    @done = true
  end
end
