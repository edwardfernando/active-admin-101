class Book < ActiveRecord::Base

  belongs_to :author
  belongs_to :genre

  scope :price_zero, where(:price => 0)
end
