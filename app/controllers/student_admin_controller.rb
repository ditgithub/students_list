class StudentAdminController < ApplicationController
  before_action :authenticate_user!
  def login
       if request.post?
        if params[:student_admin][:student_admin_name]=="admin" && params[:student_admin][:student_admin_password]=="nimda"
             session[:student_admin]="1"
             flash[:notice]="You are logged in as Student Admin."
             #redirect_to :controller=>:students
             redirect_to :controller=>:projects
        else
             flash[:notice]="Invalid name or password. Try again."
             render :action=>:login
        end
    end
  end

  def logout
      session[:student_admin]=nil
      flash[:notice]="You are logged out as Student Admin."
      redirect_to :action=>:login
  end
end
