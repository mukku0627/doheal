require 'rails_helper'

RSpec.describe "conditions/new", type: :view do
  before(:each) do
    assign(:condition, Condition.new(
      :user_id => 1,
      :comment => "MyString",
      :status => 1,
      :delete_flag => false
    ))
  end

  it "renders new condition form" do
    render

    assert_select "form[action=?][method=?]", conditions_path, "post" do

      assert_select "input#condition_user_id[name=?]", "condition[user_id]"

      assert_select "input#condition_comment[name=?]", "condition[comment]"

      assert_select "input#condition_status[name=?]", "condition[status]"

      assert_select "input#condition_delete_flag[name=?]", "condition[delete_flag]"
    end
  end
end
