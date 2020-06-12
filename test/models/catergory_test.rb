require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup 
    @category = Category.new(name: "Testing")
  end

  test "category should be valid" do 
    assert @category.valid?
  end

  test "name should be present" do 
    @category.name = " "
    assert_not @category.valid?
  end

  test "name should be unique" do 
    @category.save
    @category_new = Category.new(name: "Testing")
    assert_not @category_new.valid?
  end

  test "name should have max length" do 
    @category.name = "a" * 56
    assert_not @category.valid?
  end

  test "name should have min length" do 
    @category.name = "aa"
    assert_not @category.valid?
  end
end