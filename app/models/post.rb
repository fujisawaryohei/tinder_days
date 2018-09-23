class Post < ApplicationRecord
  has_many :likes
  belongs_to :user
  validates :user_id,presence:true
  validates :question,presence:true
  validates :select1,presence:true
  validates :select2,presence:true
  validates :select3,presence:true
  validates :select4,presence:true
  validates :answer,presence:true
end
