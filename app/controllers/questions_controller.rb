class QuestionsController < ApplicationController
  before_action :find_survey 
  before_action :check_previledges?

  def index
    @question = @survey.questions
  end

  def show
    @question = @survey.questions.find(params[:id])
    @option = @question.options
  end

  def new
    @question = @survey.questions.build
    4.times do
      @option = @question.options.build
    end
  end

  def create
    @question = @survey.questions.build(question_params)
    p @question
    if @question.save
      flash[:notice] = "Question created Sucessfully !!"
      redirect_to survey_path(@survey)
    else
      flash[:notice] = "Something went wrong !!"
      render 'new'
    end
  end

  def edit
    @question = @survey.questions.find(params[:id])
  end

  def update
    @question = @survey.questions.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to survey_path(@survey)
    else
      render 'edit'
    end
  end

  def destroy
    @question = @survey.questions.find(params[:id])
    @question.destroy
    redirect_to survey_path(@survey)
  end

  private
  def question_params
    params.require(:question).permit(:description, :options_attributes =>[:id, :description])
  end

  def find_survey
    @survey = Survey.find(params[:survey_id])
  end
end
