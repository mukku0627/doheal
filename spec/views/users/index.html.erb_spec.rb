require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :account_id => 1,
        :name => "Name",
        :comment => "Comment",
        :delete_flag => false
      ),
      User.create!(
        :account_id => 1,
        :name => "Name",
        :comment => "Comment",
        :delete_flag => false
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
