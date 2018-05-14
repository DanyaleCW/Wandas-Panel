class StudentsController < ApplicationController
    # before_action :set_student, only: [:show, :edit, :update, :destroy]
    # before_action :authenticate_admin!
    #links to my /owners route
    #links to a /views/owners/index.html.erb
    def index 
        @students = Student.all
    end 

#links to /owners/:id route
#links to a /views/owners/show.html.erb
    def show 
        @student = Student.find(params[:id])
        
    end

#create new cohort
    def new 
        @student = Student.new
        @admin = current_admin
    
    end

    def create
        @new_student= Student.create(student_params)
         
    end    

    def edit 
        @student = Student.find(params[:id])
        @admin = current_admin
    end    

    def update 
        @student = Student.find(params[:id])
        @student.update(student_params)
    end

    def destroy 
        @student = student.find(params[:id])
        @task.destroy
    end

    private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    

    def student_params
      params.require(:student).permit(:fname, :lname,:name, :age, :education)
    end
end
