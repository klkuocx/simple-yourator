class CompaniesController < ApplicationController
  def index
    @companies = Company.page(params[:page]).per(5)
  end

  def show
    @@id = params[:id]
    
    @company = Company.find(@@id)
    @jobs = Job.where( company_id: @@id, is_opened: true )
  end
end
