class HelpsController < ApplicationController
    before_action :authenticate_admin!
    
    def show
        render template: "helps/#{params[:help]}"
        puts 'Mains-Index -mashal is super helpful'
    end  

end    