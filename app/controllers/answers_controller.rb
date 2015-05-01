class AnswersController < ApplicationController

  # GET /questions/:question_id/answers/new
  def new
    @question = Question.where(id: params[:question_id]).first
    @answer = Answer.new
  end

  # POST /questions/:question_id/answers
  def create
    @answer = Answer.create!(content: params[:answer][:content])
    @question = Question.where(id: params[:question_id]).first
    @question.answers << @answer

    redirect_to "/questions/#{@question.id}"
  end

  # POST /questions/:question_id/answers


end