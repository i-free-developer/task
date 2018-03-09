class TaskView
  def display(tasks)
    if tasks.length == 0
      puts "Nothing in your Todo list, add some"
    else
      tasks.each_with_index do |task,index|
        done = task.done? ? "[x]" : "[ ]"
        puts "#{done} #{index + 1} - #{task.description}"
      end
    end
  end

  def ask_user_for_description
    puts "What do you want to do?"
    return gets.chomp
  end

  def ask_user_for_index
    puts "Index?"
    return gets.chomp.to_i - 1
  end
end
