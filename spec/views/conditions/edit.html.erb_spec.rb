require 'rails_helper'

RSpec.describe "conditions/edit", type: :view do
  before(:each) do
    @condition = assign(:condition, Condition.create!(
      :user_id => 1,
      :comment => "MyString",
      :status => 1,
      :delete_flag => false
    ))
  end

  it "renders the edit condition form" do
    render

    assert_select "form[action=?][method=?]", condition_path(@condition), "post" do

      assert_select "input#condition_user_id[name=?]", "condition[user_id]"

      assert_select "input#condition_comment[name=?]", "condition[comment]"

      assert_select "input#condition_status[name=?]", "condition[status]"

      assert_select "input#condition_delete_flag[name=?]", "condition[delete_flag]"
    end
  end
end
