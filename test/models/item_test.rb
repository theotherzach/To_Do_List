require 'test_helper'

class ItemTest < Minitest::Test

  def test_user_can_save_items_to_their_to_do_list
    Item.create({:date => Date.new(2012, 05, 01), :body => "test123"})
    Item.create({:date => Date.new(2012, 05, 02), :body => "test456"})
    items = Item.all
    assert_equal "test123" , items.first.body
    assert_equal "2012-05-02" , items.last.date.to_s
  end
end
