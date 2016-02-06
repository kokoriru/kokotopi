class Topic < ActiveRecord::Base
  belongs_to :category
  has_many :comments, dependent: :delete_all
end
