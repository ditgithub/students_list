xml.instruct!
xml.students do
   @projects.each do |project|
      xml.project do
         xml.project_name project.project_name
         xml.project_description_name project.project_description_name
         xml.start_date project.start_date
         xml.end_date project.end_date
         xml.student_id project.student_id
      end
   end
end
