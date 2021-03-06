require 'spec_helper'

describe "topics/new" do
  before(:each) do
    assign(:topic, stub_model(Topic,
      :identify => "MyString",
      :title => "MyString",
      :href => "MyString"
    ).as_new_record)
  end

  it "renders new topic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", topics_path, "post" do
      assert_select "input#topic_identify[name=?]", "topic[identify]"
      assert_select "input#topic_title[name=?]", "topic[title]"
      assert_select "input#topic_href[name=?]", "topic[href]"
    end
  end
end
