require "test_helper"

class UserTest < ActiveSupport::TestCase
   test "should not save user without name" do
     user = User.new
     assert_not user.save
   end
    test "should not save user without email" do
     user = User.new
     assert_not user.save
   end
   test "should not save user without password" do
     user = User.new
     assert_not user.save
   end
  test "should save user with name, email and password" do
     user = User.new(name: 'Test User', email: 'test@example.com', password: 'securepassword')
     assert user.save
   end

   test "should not save user with duplicate email" do
     user = User.new(name: 'Test User', email: 'test@example.com', password: 'securepassword')
     assert user.save
   end

     
end
