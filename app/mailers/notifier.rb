class Notifier < ApplicationMailer
  default from: 'student_admin@studentprojects.com',
          return_path: 'student_admin@studentprojects.com'

   def alert_admin(project)
       @project_name=project.project_name
       @student=project.student.login_name
       attachments['new_book.pdf'] = File.read('/var/tmp/file.pdf')
       mail(to: "dit.mails.test@gmail.com",subject: "ALERT-#{@student} has been added to project #{@project_name}")
   end
end
