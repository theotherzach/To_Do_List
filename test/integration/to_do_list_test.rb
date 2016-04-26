require 'test_helper'

class ToDoListTest < ActionDispatch::IntegrationTest
  def test_user_can_create_to_do_list_item
    user = User.create(:name => 'Dongmin', :uid => 'test123')
    page.visit items_path
    assert page.has_content?('Create New To-Do Item')
    page.click_link('Create New To-Do Item')
    assert page.has_button?('Just Do It')
    fill_in("item_body", :with => 'My great task')
    page.click_button('Just Do It')
    assert page.has_content?('My great task')
  end

  def test_user_can_edit_and_delete_to_do_list_item
    skip
  end

  def test_user_can_check_off_item_complete
    skip
  end


end
