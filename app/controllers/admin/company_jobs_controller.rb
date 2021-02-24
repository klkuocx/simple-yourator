class Admin::CompanyJobsController < ApplicationController
  before_action :set_company
  before_action :set_job, :only => [ :show, :edit, :update, :destroy]

  def new
    @job = @company.jobs.build
  end

  def create
    @job = @company.jobs.build(job_params)

    if @job.save
      redirect_to admin_company_url(@company)
    else
      render :action => :new
    end
  end

  def edit
  end

  def update

    if @job.update(job_params)
      redirect_to admin_company_url(@company)
    else
      render :action => :edit
    end
  end

  def destroy
    @job.destroy

    redirect_to admin_company_url(@company)
  end

  private

  def set_company
    @company = Company.find(params[:company_id])
  end

  def set_job
    @job = @company.jobs.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :requirements, :compensation, :is_opened)
  end
end
