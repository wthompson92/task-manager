class TasksController < ApplicationController
  def index
  @tasks = Task.all
  end

  def new
  end

  def create
  task = Task.new({
    title: params[:task][:title],
    description: params[:task][:description]
    })
  binding.pry
  task.save
  binding.pry
  redirect_to '/tasks'
end
end
