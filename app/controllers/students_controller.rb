class StudentsController < ApplicationController

    
    def index
        students = Student.all 
        render json: students 
    end    

    def grades
    
        by_grade = Student.all.order(grade: :desc)
        render json: by_grade
    
    end

end
