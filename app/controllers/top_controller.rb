class TopController < ApplicationController
  # before_action :authenticate_user!, except: :index
  def index
    @question = Question.new
    # @questions = current_user.group.questions
    feed_contents = current_user.group.feed_contents.includes(:content)
    @feed_contents = feed_contents.map(&:content)
  end
end
