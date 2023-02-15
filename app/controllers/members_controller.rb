class MembersController < ApplicationController

  before_action do
    @conversation = Conversation.find(params[:conversation_id])
  end

  def new

  end
  def create
    # general = current_user.members.create(conversation_id: params[:conversation_id])
    @general = current_user.conversations.create(blog_id: params[:blog_id])
    author = User.blogs.
    organization = 
    # redirect_to conversations_path, notice: "投稿者に連絡してみましょう！"
  end


end

private

def set_member
  
end

# t.references :conversation, null: false, foreign_key: true
# t.references :user, null: false, foreign_key: true