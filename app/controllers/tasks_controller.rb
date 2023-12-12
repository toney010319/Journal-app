class TasksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_task 

    def edit
        @task = Task.find(params[:id])
        @category = @task.category
      
    end
    def index
        @tasks = @category.tasks.all
    end
    def create
        @task = @category.tasks.create(task_params)
        @task.user_id = current_user.id
        respond_to do |format|
            if @task.save
                format.html { redirect_to category_path(@category), notice: "Category was successfully created." }
                format.json { render :show, status: :created, location: @category }
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @category.errors, status: :unprocessable_entity }
            end
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