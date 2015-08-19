require 'rails_helper'

RSpec.describe "conditions/show", type: :view do
  before(:each) do
    @condition = assign(:condition, Condition.create!(
      :user_id => 1,
      :comment => "Comment",
      :status => 2,
      :delete_flag => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/false/)
  end
end
