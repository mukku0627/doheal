require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :account_id => 1,
      :name => "MyString",
      :comment => "MyString",
      :delete_flag => false
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_account_id[name=?]", "user[account_id]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_comment[name=?]", "user[comment]"

      assert_select "input#user_delete_flag[name=?]", "user[delete_flag]"
    end
  end
end
