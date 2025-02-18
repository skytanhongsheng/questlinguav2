class CurriculumsController < ApplicationController
  def show
    @curriculum = Curriculum.find(params[:id])
  end

  def index
    @curriculums = Curriculum.all
  end

  def new
    @curriculum = Curriculum.new
  end

  def create
    @curriculum = Curriculum.new(curriculum_params)

    if @curriculum.save
      redirect_to curriculums_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def curriculum_params
    params.require(:curriculum).permit(:title, :purpose, :duration, :context, :lesson_hours)
  end
end
