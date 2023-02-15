class Blog < ApplicationRecord
  belongs_to :user
  has_many :conversations, dependent: :destroy
  # 該当blogのidをblog_idとして持つconversationのレコードが参照可能　=> それに紐づくuser(この部屋をつくった人)がわかる
  has_many :conversations_users, through: :conversations, source: :blog

end
