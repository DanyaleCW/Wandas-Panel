class InstructorsController < ApplicationController
    def index 
        @instructors = Instructor.all
    end    

    def show 
        @instructor = Instructor.find(params[:id])
    end

    def new 
        @instructor = Instructor.new
    end


    def create 
        Instructor.create(instructor_params)
        redirect_to '/instructors'
    end 

    def edit 
        @instructor = Instructor.find(params[:id])
    end    

    

    def update 
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        redirect_to '/instructors'
    end

    def destroy 
        Instructor.find(params[:id]).destroy
        redirect_to '/instructors'
    end

    private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def instructor_params
      params.require(:instructor).permit(:fname, :lname, :age, :salary, :education)
    end
end
