class Category < ActiveRecord::Base
  has_many :topics, dependent: :delete_all
end
