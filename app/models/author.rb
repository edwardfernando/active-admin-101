class Author < ActiveRecord::Base
  has_many :books

  def display_name
    "#{last_name}, #{first_name}"
  end
end
