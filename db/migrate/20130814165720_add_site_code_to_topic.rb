class AddSiteCodeToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :site_code, :string, null: false, default: ''
  end
end
