class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }
end

# title is not blank
# content is at least 100 characters long
# category is either "Fiction" or "Non-Fiction"
