class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics, options: 'DEFAULT CHARSET=utf8' do |t|
      t.string  :identify,    null: false,  default: ''
      t.string  :title,       null: false,  default: ''
      t.string  :href,        null: false,  default: ''
      t.date    :date,        null: false,  default: '1970-01-01'

      t.timestamps
    end
  end
end
