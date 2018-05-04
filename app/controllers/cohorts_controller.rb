class CohortsController < ApplicationController

    #links to my /owners route
    #links to a /views/owners/index.html.erb
    def index 
        @cohorts = Cohort.all
        puts 'Cohorts-Index -mashal is super helpful'
    end 

#links to /owners/:id route
#links to a /views/owners/show.html.erb
    def show 
        @cohort = Cohort.find(params[:id])
        puts 'Cohorts-Show -mashal is super helpful'
    end

#create new cohort
    def new 
        @cohort = Cohort.new
        puts 'Cohorts-New -mashal is super helpful'
    end

    def create
        Cohort.create(cohort_params)
        redirect_to '/cohorts'
    end    

#edit cohort
    def edit 
        @cohort = Cohort.find(params[:id])
        puts 'Cohorts-Index -david sucks'
    end    

    def update 
        @cohort = Cohort.find(params[:id])
        @cohort.update(cohort_params)
        redirect_to '/cohorts'
        puts 'Cohorts-update -mashal is super helpful'
    end

    def destroy 
        @cohort.find(params[:id]).destroy
        redirect_to '/cohort'
        puts 'Cohorts-destroy -mashal is super helpful'
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






