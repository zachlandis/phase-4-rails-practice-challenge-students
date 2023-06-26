class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def show
        student = Student.find(params[:id])
        render json: student, status: :ok
    end

    def update
        student = Student.find(params[:id])
        student.update(student_params)
        render json: student, status: :ok
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        head :no_content
    end


    private 

    def student_params
        params.permit(:name, :major, :age, :instructor_id)
    end
    
    def find_student
        student = Student.find(params[:id])
    end
end
