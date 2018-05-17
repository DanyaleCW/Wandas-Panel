class SchoolsController < ApplicationController
    def show
        render template: "schools/#{params[:school]}"
        puts 'Mains-Index -mashal is super helpful'
    end  
end    