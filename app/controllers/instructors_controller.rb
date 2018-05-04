class InstructorsController < ApplicationController
    def index 
        @instructors = Instructor.all
        puts 'Instructors-Index -mashal is super helpful'
    end    

    def show 
        @instructor = Instructor.find(params[:id])
        puts 'Instructors-Show -mashal is super helpful'
    end

    def new 
        @instructor = Instructor.new
        puts 'Instructors-New -mashal is super helpful'
    end


    def create 
        Instructor.create(instructor_params)
        redirect_to '/instructors'
        puts 'Instructors-Index -david sucks'
    end 

    def edit 
        @instructor = Cohort.find(params[:id])
        puts 'Instructors-Index -david sucks'
    end    

    

    def update 
        @instructor = Instructor.find(params[:id])
        @instructor.update(instructor_params)
        redirect_to '/instructors'
        puts 'Instructor-update -mashal is super helpful'
    end

    def destroy 
        @instructor.find(params[:id]).destroy
        redirect_to '/instructor'
        puts 'Instructors-destroy -mashal is super helpful'
    end

    private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def cohort_params
      params.require(:cohort).permit(:fname, :lname, :age, :salary, :education)
    end
end
