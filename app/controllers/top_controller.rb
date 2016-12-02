class TopController < ApplicationController
  # before_action :authenticate_user!, except: :index
  def index
    @question = Question.new
    # @questions = current_user.group.questions
    @feed_contents = current_user.group.feed_contents.includes(:content).page(params[:page]).per(5)
    @feed_contents_resource = @feed_contents.map(&:content)
  end
end
