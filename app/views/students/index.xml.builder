xml.instruct!
xml.students do
   @students.each do |student|
      xml.student do
         xml.first_name student.first_name
         xml.last_name student.last_name
         xml.email student.email
         xml.dob student.dob
         xml.mobile student.mobile
         xml.login_name student.login_name
      end
   end
end
