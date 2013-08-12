require 'spec_helper'

describe Topic do

  it "generate identify before save topic object" do
    topic = Topic.new(title: '山东省教师招聘', href: 'http://employ.kimigao.me', date: '2013-09-01')
    topic.save!

    topic.identify.should == Digest::SHA1.hexdigest([topic.href, topic.title].join('-'))[0..9]
  end
end
