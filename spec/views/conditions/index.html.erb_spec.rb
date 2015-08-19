require 'rails_helper'

RSpec.describe "conditions/index", type: :view do
  before(:each) do
    assign(:conditions, [
      Condition.create!(
        :user_id => 1,
        :comment => "Comment",
        :status => 2,
        :delete_flag => false
      ),
      Condition.create!(
        :user_id => 1,
        :comment => "Comment",
        :status => 2,
        :delete_flag => false
      )
    ])
  end

  it "renders a list of conditions" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Comment".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
