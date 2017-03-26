class Student < ActiveRecord::Base
  has_many :projects
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  after_validation :set_loginname, on: [ :create, :update ]
  #before_save :student_admin_loggedin?

  def student_admin_loggedin?
     if session[:student_admin].nil?
        flash[:notice]="You'll need to login as an student admin user to access projects pages."
        redirect_to :controller=>:student_admin,:action=>:login
     end
  end

  protected
    def set_loginname
       self.login_name = self.last_name + "_" + self.first_name
    end
end
