class CoursesController < ApplicationController
    before_action :authenticate_admin!
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
    end

    def create
        Course.create(course_params)
        redirect_to '/courses'
    end   

    def edit 
        @course = Course.find(params[:id])
    end 

    def update
        @course = Course.find(params[:id])
        @course.update(course_params)
        redirect_to '/courses' 
    end

    def destroy
        Course.find(params[:id]).destroy
        redirect_to '/courses' 
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



