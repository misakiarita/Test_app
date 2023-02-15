class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
has_many :blogs
has_many :conversations, dependent: :destroy
# 該当userのidをuser_idとして持つconversationのレコードが参照可能 => それに紐づくblogがわかる
has_many :conversations_blogs, through: :conversations, source: :user
enum role: {general: 1, organization: 2, admin:3}
end
