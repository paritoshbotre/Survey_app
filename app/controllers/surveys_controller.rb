class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      flash[:notice] = "Survey successfully created !!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def edit
    @survey = Survey.find(params[:id])
    puts "***************************"
    p @survey
  end

  def update
    @survey = Survey.find(params[:id])
    if @survey.update_attributes(survey_params)
      flash[:notice] = "Survey updated !!!"
      redirect_to root_path
    else
      flash[:notice] = "Something went wrong !!!"
      render 'edit'
    end
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    flash[:notice] = "Survey Deleted !!!"
    redirect_to surveys_path
  end

  private
  def survey_params
    params.require(:survey).permit(:name, :survey_type, :conducted_on, :count_people)
  end
end
