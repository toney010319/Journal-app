class TasksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_task 

    def create
        @task = @category.tasks.create(task_params)
        @task.user_id = current_user.id
        if @task.save
            flash[:notice] = "Task created successfully"
        redirect_to category_path(@category)
        else
            flash[:alert] = "Task not created"
        redirect_to category_path(@category)
        end
    end
 

 

    def destroy
         @task = @category.tasks.find(params[:id])
         @task.destroy
         redirect_to category_path(@category)
    end


    def update
        @task = @category.tasks.find(params[:id])
               respond_to do |format|
                   if @task.update(task_params)
               format.html { redirect_to category_path(@category), notice: "Task was successfully updated." }
                   else 
                       format.html { redirect_to category_path(@category), alert: "Comment was not updated!." }
                   end
           end
       end
       
    private

    def set_task
        @category = Category.find(params[:category_id])
    end
    def task_params
        params.require(:task).permit(:name, :description, :deadline, :status)
end

end