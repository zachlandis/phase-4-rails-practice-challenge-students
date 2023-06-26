class InstructorsController < ApplicationController

    def index
        instructors = Instructor.all
        render json: instructors
    end

    def show
        instructor = Instructor.find(params[:id])
        render json: instructor, status: :ok
    end

    def update
        instructor = Instructor.find(params[:id])
        instructor.update(instructor_params)
        render json: instructor, status: :ok
    end

    def destroy
        instructor = Instructor.find_by(id: params[:id])
        instructor.destroy
        head :no_content
    end


    private

    def instructor_params
        params.permit(:name)
    end
    
    def find_instructor
        instructor = Instructor.find(params[:id])
    end
end
