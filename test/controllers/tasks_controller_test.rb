require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @task = tasks(:one)
    @category = categories(:one)  
  end

 test "should get index" do
   get category_tasks_path(@category)
   assert_response :success
 end

 test "should get new" do
   get new_category_task_path(@category)
   assert_response :success
 end

 test "should create task" do
   assert_difference("Task.count") do
     post category_tasks_url(@category, @task), params: { task: { description: @task.description, name: @task.name, deadline: @task.deadline, status: @task.status, category_id: @task.category_id, user_id: @task.user_id } }
   end

   assert_redirected_to task_url(Task.last)
 end

 test "should show task" do
   get category_task_url(@category, @task)
   assert_response :success
 end

 test "should get edit" do
   get edit_category_task_path(@category, @task)
   assert_response :success
 end

 test "should update task" do
   patch category_task_url(@category, @task), params: { task: { description: @task.description, name: @task.name } }
   assert_redirected_to category_task_url(@category, @task)
 end

 test "should destroy task" do
   assert_difference("Task.count", -1) do
     delete category_task_url(@category, @task)
   end

   assert_redirected_to category_task_url(@category, @task)
 end

  
end
