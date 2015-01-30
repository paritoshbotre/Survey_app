class QuestionsController < ApplicationController
  def index
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions
  end

  def show
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
    @option = @question.options
  end

  def new
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.build
    4.times do
      @option = @question.options.build
      p @option
    end
  end

  def create
    @survey = Survey.find(params[:survey_id])
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
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
    if @question.update_attributes(question_params)
      redirect_to survey_path(@survey)
    else
      render 'edit'
    end
  end

  def destroy
    @survey = Survey.find(params[:survey_id])
    @question = @survey.questions.find(params[:id])
    @question.destroy
    redirect_to survey_path(@survey)
  end

  private
  def question_params
    params.require(:question).permit(:description, :options_attributes =>[:id, :description])
  end
end
