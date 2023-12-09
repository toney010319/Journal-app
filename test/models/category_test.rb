require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "should not save category without name" do
    category = Category.new
    assert_not category.save
  end

  test "should save category with name" do
    user = users(:one) 
    category = Category.new(name: 'Test Category',description: 'Test description', user: user)
    assert category.save, "Failed to save with error: #{category.errors.full_messages.to_sentence}"
  end

  test "should not save category with duplicate name" do
    user = users(:one) 
    category_one = Category.create(name: 'Unique Name', description: 'A description', user: user)
  
    category_two = Category.new(name: 'Unique Name', description: 'Another description', user: user)
    assert_not category_two.save, "Saved the category with a duplicate name"
  end
  test "should not save category without description" do
    category = Category.new
    assert_not category.save
  end
  test "should save category with description" do
    user = users(:one) 
    category = Category.new(name: 'Test Category',description: 'Test description', user: user)
    assert category.save, "Failed to save with error: #{category.errors.full_messages.to_sentence}"
  end
  test "should not save category without user" do
    category = Category.new
    assert_not category.save
  end

  test "should save category with user" do
    user = users(:one) 
    category = Category.new(name: 'Test Category',description: 'Test description', user: user)
    assert category.save, "Failed to save with error: #{category.errors.full_messages.to_sentence}"
  end

test "should not save category with invalid user" do
    category = Category.new(name: 'Test Category',description: 'Test description', user: nil)
    assert_not category.save
  end

  test "should save category with valid user" do
    user = users(:one) 
    category = Category.new(name: 'Test Category',description: 'Test description', user: user)
    assert category.save
  end


end
