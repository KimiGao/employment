# encoding: utf-8
namespace :employ_crawler do

  desc 'crawl employ infomation'
  task crawl: :environment do
    site_array = [:jnedu, :qdedu, :ytedu, :zdjw]

    site_array.each do |site|
      edu_crawler = Kernel.const_get("EmployCrawler::#{site.capitalize}Crawler").new
      edu_crawler.crawl

      edu_crawler.content.each do |content|
        Topic.create(content)
      end
    end
  end
end
