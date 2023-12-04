class TasksController < ApplicationController
before_action :authenticate_user!
before_action :set_task
    def create 
        @task = @category.tasks.create(task_params)
        @task.user = current_user
        if @task.save
            flash[:notice] = "Task created successfully"
            redirect_to task_path(@task)
        else
            flash[:alert] = "Task not created"
            redirect_to task_path(@task)
        end
    end

    def destroy
        @task = @category.tasks.find(params[:id])
        @task.destroy
        redirect_to  task_path(@task)
    end


    private 
    def task_params
        params.require(:comment).permit(:name, :description, :deadline, :status)
    end

    def set_task
        @category = Category.find(params[:category_id])
    end
end
