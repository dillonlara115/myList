class TasksController < ApplicationController

def create
	@list = List.find(params[:list_id])
	@task = @list.tasks.new(params[:task])
	if @task.save
		flash[:notice] = "Task created!"
		redirect_to list_url(@list)
	else
		flash[:error] = "Error creating task, please try again"
		redirect_to list_url(@list)
	end
end
end
