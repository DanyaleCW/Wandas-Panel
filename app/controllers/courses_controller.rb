class CoursesController < ApplicationController
#links to my /owners route
#links to a /views/owners/index.html.erb
    def index 
        @courses = Course.all
        puts 'Courses-Index -mashal is super helpful'
    end    

    #links to /owners/:id route
#links to a /views/owners/show.html.erb
    def show 
        @course = Course.find(params[:id])
        puts 'Courses-Show -mashal is super helpful'
    end

       

    def new 
        @course = Course.new
        puts 'Courses-New -mashal is super helpful'
    end

    def create
        Course.create(course_params)
        redirect_to '/coourses'
    end   

    def edit 
        @course = Course.find(params[:id])
        puts 'Courses-Index -david sucks'
    end 

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses' 
        puts 'Courses-update -mashal is super helpful'
    end

    def destroy
         @course.find(params[:id]).destroy
        redirect_to '/course' 
        puts 'Courses-destroy -mashal is super helpful'
    end

     private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def course_params
      params.require(:course).permit(:name, :total_hours)
    end

end



