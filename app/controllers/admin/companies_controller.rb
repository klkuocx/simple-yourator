class Admin::CompaniesController < ApplicationController
  def show
    @company_id = params[:id]
    @jobs = Job.where( company_id: @company_id )
  end
end
