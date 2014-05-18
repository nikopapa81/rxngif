class Picture < ActiveRecord::Base
  validates :caption, :uniqueness => true
end
