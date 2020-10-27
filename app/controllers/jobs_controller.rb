class JobsController < ApplicationController
    skip_before_action :authorized, only: [ :index]
    def index 
        jobs = Job.all 
        render json: jobs
    end

    def create 
        job = Job.create(job_params)
        if job.valid?
            render json: job
        else 
            render json: {error: "failed to create job"}, status: :not_acceptable
        end
    end

    def update
        job = Job.find(params[:id])
        if job.update(job_params)
            render json: job
        else
            render json: {error: "failed to create job"}, status: :not_acceptable
        end
    end

    private
    def job_params
        params.require(:job).permit(:client_id, :freelancer_id, :start_time, :hours, :dayrate_or_hourly, :lat, :long, :location, :rate, :total_amount, :completed, :description)
    end
end

