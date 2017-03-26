class Project < ActiveRecord::Base
  belongs_to :student
  #before_save :student_admin_loggedin?

  def student_admin_loggedin?
     if session[:student_admin].nil?
        flash[:notice]="You'll need to login as an student admin user to access projects pages."
        redirect_to :controller=>:student_admin,:action=>:login
     end
  end
  
end
