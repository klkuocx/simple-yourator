class Admin::CompaniesController < ApplicationController
  before_action :set_company, :only => [ :show, :edit, :update, :destroy]

  def show
    @company_id = params[:id]
    @jobs = Job.where( company_id: @company_id )
  end

  def edit
  end

  def update
    @company.update(company_params)

    redirect_to :action => :show, :id => @company
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:introduction, :vision, :news, :benefits)
  end
end
