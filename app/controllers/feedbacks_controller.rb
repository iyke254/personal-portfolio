class FeedbacksController < ApplicationController
	before_action :set_user
  def index
  end

  def edit
  end

  def new
  end	

  def create
    @user = current_user
    @feedback = @user.feedbacks.new(feedback_params)
    if @feedback.save
      redirect_to root_path, notice: "success"
    else
      redirect_to root_path, alert: "failed"
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :body)
  end

  def set_user
    @user = current_user
  end
end
