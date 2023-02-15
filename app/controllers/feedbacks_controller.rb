class FeedbacksController < ApplicationController
  before_action :set_feedback, only: [:edit, :destroy, :update]

  def index
    @feedbacks = Feedback.all
  end

  def new
    @feedback = Feedback.new
    @user = User.find(params[:user_id])
  end

  def edit
    @user = User.find(params[:user_id])
  end

  def update
    @feedback = Feedback.find(params[:id])
    if @feedback.user == current_user # Vérifie si l'utilisateur actuel est le propriétaire du témoignage
      if @feedback.update(feedback_params)
        redirect_to user_feedbacks_path(@feedback.user), notice: 'Le témoignage a été modifier avec succès.'
      else
        render :edit
      end
    else
      redirect_to root_path, alert: "Vous n'êtes pas autorisé à effectuer cette action."
    end
  end

  def create
    @user = User.find(params[:user_id])
    @feedback = Feedback.new(feedback_params)
    @feedback.user = current_user
    if @feedback.save
      redirect_to user_feedbacks_path
    else
      render :new
    end
  end

  def destroy
    @feedback.destroy
    redirect_to user_feedbacks_path
  end

  private

  def feedback_params
    params.require(:feedback).permit(:rating, :comment, :name)
  end

  def set_feedback
    @feedback = Feedback.find(params[:id])
  end
end
