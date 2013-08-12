require 'spec_helper'

describe "topics/index" do
  before(:each) do
    assign(:topics, [
      stub_model(Topic,
        :identify => "Identify",
        :title => "Title",
        :href => "Href"
      ),
      stub_model(Topic,
        :identify => "Identify",
        :title => "Title",
        :href => "Href"
      )
    ])
  end

  it "renders a list of topics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Identify".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Href".to_s, :count => 2
  end
end
