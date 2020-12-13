class StudentsController < ApplicationController

    def index 
        @students = Student.all
    end 

    def show 
        @student = Student.find(params[:id])
    end 

    def new 
        @student = Studnt.new 
    end 

    def create
        @student = student.create(student_params)

        redirect_to student_path
    end 

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find_by(id: student_params)
        @student.update()
    end 





    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end 
end
