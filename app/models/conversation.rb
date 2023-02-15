class Conversation < ApplicationRecord
  # 会話はどのUserが作成しているか、どのBlog(案件)に属しているか
  belongs_to :user
  belongs_to :blog
  # 一つの会話はメッセージをたくさん含む一対多。作成された会話には複数人のMember(conversation_idを持ったuser)なので一対多。
  has_many :messages, dependent: :destroy
  has_many :members, dependent: :destroy

end
