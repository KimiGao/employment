class Topic < ActiveRecord::Base
  include IdentifyGenerator

  validates :identify, uniqueness: true
end
