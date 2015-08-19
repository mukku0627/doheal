require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :account_id => 1,
      :name => "MyString",
      :comment => "MyString",
      :delete_flag => false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_account_id[name=?]", "user[account_id]"

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_comment[name=?]", "user[comment]"

      assert_select "input#user_delete_flag[name=?]", "user[delete_flag]"
    end
  end
end
