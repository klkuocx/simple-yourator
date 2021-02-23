class HomeController < ApplicationController
  def index
    @companies = Company.limit(5).order("RAND()")
    @jobs = Job.where( is_opened: true ).limit(10).order("RAND()")
  end
end
