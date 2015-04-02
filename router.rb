require_relative './app/controller.rb'
controller = Controller.new

input = ARGV
action = input.shift

case action
  when "list" then controller.list
  when "add" then controller.add(input.shift)
  when "delete" then controller.delete(input.shift.to_i)
  when "complete" then controller.complete(input.shift.to_i)
  when "uncomplete" then controller.uncomplete(input.shift.to_i)
  when "give_up" then controller.give_up
  else controller.error
end

controller.save!