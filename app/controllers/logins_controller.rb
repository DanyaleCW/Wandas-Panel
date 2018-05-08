class LoginsController < ApplicationController

    def index 
        
    end 

#links to /owners/:id route
#links to a /views/owners/show.html.erb
    def show 
    
    end   

#create new cohort
    def new 
    
    end

end     

#     def create
#         Student.create(student_params)
#         redirect_to '/students'
#     end    

# #edit cohort
#     def edit 
#         @student = Student.find(params[:id])
#     end    

#     def update 
#         @student = Student.find(params[:id])
#         @student.update(student_params)
#         redirect_to '/students'
#     end

#     def destroy 
#         Student.find(params[:id]).destroy
#         redirect_to '/students'
#     end

#     private
#     # Using a private method to encapsulate the permissible parameters is
#     # just a good pattern since you'll be able to reuse the same permit
#     # list between create and update. Also, you can specialize this method
#     # with per-user checking of permissible attributes.
#     def student_params
#       params.require(:student).permit(:fname, :lname,:name, :age, :education)
#     end

# end      