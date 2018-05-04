class StudentsController < ApplicationController
    
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
    end

    def create
        Student.create(student_params)
        redirect_to '/students'
    end    

#edit cohort
    def edit 
        @student = Student.find(params[:id])
    end    

    def update 
        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to '/students'
    end

    def destroy 
        @student.find(params[:id]).destroy
        redirect_to '/student'
    end

    private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def student_params
      params.require(:student).permit(:fname, :name, :age, :education)
    end
end
