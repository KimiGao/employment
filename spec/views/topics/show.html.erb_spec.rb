require 'spec_helper'

describe "topics/show" do
  before(:each) do
    @topic = assign(:topic, stub_model(Topic,
      :identify => "Identify",
      :title => "Title",
      :href => "Href"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Identify/)
    rendered.should match(/Title/)
    rendered.should match(/Href/)
  end
end
