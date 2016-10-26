class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 100}
    #  message: "too short"}
  validates :category, inclusion: ["Fiction", "Non-Fiction"]
end
