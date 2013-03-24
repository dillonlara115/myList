class TasksController < ApplicationController
	attr_accessor :completed
	before_filter :find_list
	respond_to :html, :xml, :js

	def create
		
		@task = @list.tasks.new(params[:task])
		if @task.save
			flash[:notice] = "Task created!"
			redirect_to list_url(@list)
		else
			flash[:error] = "Error creating task, please try again"
			redirect_to list_url(@list)
		end
	end

	def complete 

		@task = @list.tasks.find(params[:id])
		@task.completed = true
		@task.save
		redirect_to list_url(@list)
	end

	

	def destroy
    @task = @list.tasks.find(params[:completed])
    @list.destroy

    respond_to do |format|
      format.html { redirect_to lists_url }
      format.json { head :no_content }
    end
end

  private
	def find_list
		@list = List.find(params[:list_id])
	end
end
