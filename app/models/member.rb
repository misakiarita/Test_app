class Member < ApplicationRecord

    # 一人のユーザーが同じ会話ルームに複数保存されないようにするためのバリデーションを設定。
  # validates_uniqueness_of :user_id, scope: :conversation_id
  # scope :between, -> (user_id,conversation_id) do
  #   where(["(conversations.sender_id = ? AND conversations.recipient_id = ?) OR (conversations.sender_id = ? AND conversations.recipient_id = ?)", sender_id ,recipient_id, recipient_id, sender_id])
  # end

end
