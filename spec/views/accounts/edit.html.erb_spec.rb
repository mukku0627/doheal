require 'rails_helper'

RSpec.describe "accounts/edit", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :name => "MyString",
      :comment => "MyString",
      :delete_flag => false
    ))
  end

  it "renders the edit account form" do
    render

    assert_select "form[action=?][method=?]", account_path(@account), "post" do

      assert_select "input#account_name[name=?]", "account[name]"

      assert_select "input#account_comment[name=?]", "account[comment]"

      assert_select "input#account_delete_flag[name=?]", "account[delete_flag]"
    end
  end
end
