class CompanyJobsController < ApplicationController
  def show
    @company = Company.find(params[:company_id])
    @job = Job.find(params[:id])
  end
end
