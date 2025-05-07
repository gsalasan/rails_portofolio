# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Profile.create!(
  name: "Gean Salasan",
  address: "Dusun Sedan gg delima 2 no 131H Sariharjo Ngaglik Sleman DIY 55581",
  phone: "+62 82119676 188",
  email: "gean.salasan@gmail.com",
  summary: "Accomplished professional with over 7 years as a Ruby on Rails developer, 5 years as Vice President leading technical and security teams, and 2 years as a Tech Lead. Experienced in mobile app development, cybersecurity architecture, and backend mentoring."
)

Experience.create!([
  {
    title: "Vice President of RISE",
    company: "PT. Investree Radhika Jaya",
    start_date: "Sep 2018",
    end_date: "Feb 2024",
    description: "- Directed a team of research engineers, security engineers, and technical writers\n- Evaluated vendor offerings, conducted compliance checks, and led penetration testing\n- Orchestrated annual activity planning, setting and achieving KPIs\n- Implemented a quarterly penetration testing schedule, reducing system breaches by 25%"
  },
  {
    title: "Mentor",
    company: "Binar Academy, Yogyakarta Office",
    start_date: "Mar 2017",
    end_date: "Sep 2018",
    description: "- Taught backend development, focusing on technologies like Golang, Ruby on Rails, and GitLab\n- Provided practical training to over 100 students, preparing them for industry roles"
  }
])

Education.create!(
  institution: "Politeknik Negeri Bandung",
  degree: "Informatics Engineering",
  field: "Computer Science",
  start_date: "2005",
  end_date: "2009"
)

Project.create!(
  title: "CIMB NIAGA Mobile App",
  description: "Spearheaded the development of a new mobile app for CIMB NIAGA",
  impact: "Increased user engagement by 20%",
  technologies: "Ruby on Rails, Scrum, Atlassian tools"
)
