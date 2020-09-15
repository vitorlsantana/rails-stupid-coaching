class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:question]
    if params[:question] == "I'm going to work right now"
      @answer = "Great!"
    elsif params[:question].present? && params[:question].end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
