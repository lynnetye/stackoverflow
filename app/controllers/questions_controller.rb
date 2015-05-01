class QuestionsController < ApplicationController

  # SHOW /questions/:id
  def show
    @question = Question.where(id: params[:id]).first
  end

  # GET /questions
  def index
    @questions = Question.all
  end

  # GET /questions/new
  def new
    @question = Question.new
  end

  # POST /questions
  def create
    @question = Question.create!(
      title: params[:question][:title],
      content: params[:question][:content]
      )
    redirect_to "/questions/#{@question.id}"
  end

  # GET /questions/:question_id/edit
  def edit
    @question = Question.where(id: params[:id]).first
  end

  def update
    @question = Question.where(id: params[:id]).first
    @question.update(
      title: params[:question][:title],
      content: params[:question][:content]
      )
    redirect_to "/questions/#{@question.id}"
  end

  def destroy
    @question = Question.where(id: params[:id]).first
    @question.delete
    redirect_to "/questions"
  end
end
