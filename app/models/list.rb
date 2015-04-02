require_relative './task.rb'
require 'csv'

class List

  attr_accessor :tasks

  def initialize
    @file_path = './db/tasks.csv'
    load_tasks
  end

  def upload_tasks
    CSV.open(@file_path, 'w') do |t|
      @tasks.each { |task| t << task.to_a }
    end
  end

  def load_tasks
    @tasks = CSV.read(@file_path).map do |row|
      Task.new(row[1],row[2])
    end
  end

  def add(content)
    @tasks << Task.new(content, false)
  end

  def delete(id)
    @tasks.delete_if { |task| task.id == id }
  end

  def complete(id)
    @task = @tasks.find { |task| task.id == id }
    @task.complete!
  end

  def uncomplete(id)
    @task = @tasks.find { |task| task.id == id }
    @task.uncomplete!
  end

end