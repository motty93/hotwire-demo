require 'rails_helper'

RSpec.describe "cats/index", type: :view do
  before(:each) do
    assign(:cats, [
      Cat.create!(
        name: "Name",
        age: 2
      ),
      Cat.create!(
        name: "Name",
        age: 2
      )
    ])
  end

  it "renders a list of cats" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
