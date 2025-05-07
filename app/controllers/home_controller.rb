class HomeController < ApplicationController
  allow_unauthenticated_access
  def index
    @profile = Profile.first
    @experiences = Experience.all.order(start_date: :desc)
    @educations = Education.all.order(start_date: :desc)
    @projects = Project.all
    @references = Reference.all
  end
end
