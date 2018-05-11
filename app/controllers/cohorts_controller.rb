class CohortsController < ApplicationController

    #links to my /owners route
    #links to a /views/owners/index.html.erb
    def index 
        @cohorts = Cohort.all
        
    end 

#links to /owners/:id route
#links to a /views/owners/show.html.erb
    def show 
        @cohort = Cohort.find(params[:id])
    end

#create new cohort
    def new 
        @cohort = Cohort.new
    end

    def create
        # @cohort = Cohort.find(params[:id])
        Cohort.create(cohort_params)
        redirect_to '/cohorts'
    end    

#edit cohort
    def edit 
        @cohort = Cohort.find(params[:id])
    end    

    def update 
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
    end

    def destroy 
        Cohort.find(params[:id]).destroy
        redirect_to '/cohorts'
    end

    private
    # Using a private method to encapsulate the permissible parameters is
    # just a good pattern since you'll be able to reuse the same permit
    # list between create and update. Also, you can specialize this method
    # with per-user checking of permissible attributes.
    def cohort_params
      params.require(:cohort).permit(:name, :start_date, :end_date, :instructor_id, :course_id)
    end
end






