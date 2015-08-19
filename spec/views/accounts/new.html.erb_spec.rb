require 'rails_helper'

RSpec.describe "accounts/new", type: :view do
  before(:each) do
    assign(:account, Account.new(
      :name => "MyString",
      :comment => "MyString",
      :delete_flag => false
    ))
  end

  it "renders new account form" do
    render

    assert_select "form[action=?][method=?]", accounts_path, "post" do

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_comment[name=?]", "account[comment]"

      assert_select "input#account_delete_flag[name=?]", "account[delete_flag]"
    end
  end
end
