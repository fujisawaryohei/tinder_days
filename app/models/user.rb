class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name,presence:true
  
  has_many :posts
  has_many :images
  has_many :likes ,dependent: :destroy
  has_many :active_relationships,
            class_name: "Relationship",
            foreign_key:"follower_id",
            dependent: :destroy
  has_many :passive_relationships,
            class_name: "Relationship",
            foreign_key:"followed_id",
            dependent: :destroy
  has_many :following,through: :active_relationships,source: :followed
  has_many :follower,through: :passive_relationships,source: :follower

  def follow(other_user)
    active_relationships(follower_id:other_user.id)
  end

  def unfollow(other_user)
    active_relationships(follower_id:other_user.id).destroy
  end

  def follow?(other_user)
    following.include?(other_user)
  end
end
