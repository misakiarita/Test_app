class ConversationsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @conversations = Conversation.all
  end

  def create
    conversation = current_user.conversations.create(blog_id: params[:blog_id])
    @member = params[:member_ids]
    @member.each do |m|
      member = conversation.members.create!(user_id: m)
    end
    redirect_to conversations_path, notice: "投稿者に連絡してみましょう！"
  end

  private

  # def member_params
  #   params.require(:member).permit({member_ids: []})
  # end

end

# t.references :blog, null: false, foreign_key: true
# t.references :user, null: false, foreign_key: true