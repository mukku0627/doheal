require 'rails_helper'

RSpec.describe "accounts/show", type: :view do
  before(:each) do
    @account = assign(:account, Account.create!(
      :name => "Name",
      :comment => "Comment",
      :delete_flag => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/false/)
  end
end
