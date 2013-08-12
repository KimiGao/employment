# encoding: utf-8
module IdentifyGenerator
  extend ActiveSupport::Concern

  included do
    before_create :generate_identify
  end

  def generate_identify
    self.identify = Digest::SHA1.hexdigest([self.href, self.title].join('-'))[0..9]
  end
end
