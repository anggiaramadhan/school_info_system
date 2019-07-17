class ClassroomsController < ApplicationController
  before_action :set_classroom, only: [:show] 

  # GET /classrooms/1
  # GET /classrooms/1.json
  def show
    @students = @classroom.show_students_with_rank
  end

  def best_scores
    @classroom = Classroom.best_scores(params[:id], params[:semester])

    render json: @classroom
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classroom
      @classroom = Classroom.find(params[:id])
    end
    
end
