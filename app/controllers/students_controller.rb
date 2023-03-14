class StudentsController < ApplicationController

    def index
        @students=Student.all
    end    

    def new
        @student=Student.new
    end    
    
    def create
        @student=Student.new(
            fname: params[:student][:fname],
            lname: params[:student][:lname],
            address: params[:student][:address]
        )
        if @student.save
            redirect_to root_path
        else
            render :new
        end        
    end  
    
    def show
        @student=Student.find(params[:id])
        
    end 
    
    def edit
        @student=Student.find(params[:id])
        
    end  

    def update
        

        @student=Student.find(params[:student][:id])
        @student.update(
            fname: params[:student][:fname],
            lname: params[:student][:lname],
            address: params[:student][:address]
        )
        
        
        redirect_to root_path
     
    end 
    def destroy
        @student=Student.find(params[:id])
        @student.destroy
    
        redirect_to root_path
    end    
end    
      