require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :account_id => 1,
      :name => "Name",
      :comment => "Comment",
      :delete_flag => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/false/)
  end
end
