require_relative './models/list.rb'
require_relative './view.rb'

class Controller

  def initialize
    @list = List.new
    @view = View.new
  end

  def list
    tasks = @list.tasks
    @view.render(tasks)
  end

  def add(description)
    @list.add(description)
    @view.render("successfully added task #{description}")
  end

  def delete(id)
    @list.delete(id)
    @view.render("successfully deleted task #{id}")
  end

  def complete(id)
    @list.complete(id)
    @view.render("successfully completed task #{id}")
  end

  def uncomplete(id)
    @list.uncomplete(id)
    @view.render("successfully uncompleted task #{id}")
  end

  def give_up
    plan_b = ["scrumpy-time","lie on couch","grumble","grumble again","pass out","grumble in your dreams","give up at grumbling", "give up at everything else","evolve into cat"]
    @list.tasks = []
    plan_b.each { |task| @list.add(task) }
    @list.tasks.each { |task| @list.complete(task.id) }
    @view.render("...")
  end

  def save!
    @list.upload_tasks
  end

  def error
    @view.render("NO NO NO NO NO NO NO NO")
  end

end