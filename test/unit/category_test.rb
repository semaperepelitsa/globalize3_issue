require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  test "find_by translated attribute" do
    Category.delete_all
    category = Category.create!(:name => "Cakes")
    assert_equal category, Category.find_by_name("Cakes")
  end

  test "find_or_initialize_by translated attribute" do
    Category.delete_all
    category = Category.find_or_initialize_by_name("Doesn't exist")
    assert_equal "Doesn't exist", category.name
    assert !category.persisted?
  end

  test "find_or_create_by translated attribute" do
    Category.delete_all
    category = Category.find_or_create_by_name("Doesn't exist")
    assert_equal "Doesn't exist", category.name
    assert category.persisted?
  end
end
