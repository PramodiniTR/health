class ProjectsController < ApplicationController
    before_action :set_project, only: %i[ show update destroy]

    def index
        @projects = Project.paginate(page: params[:page],per_page: 5)
        render json: @projects
    end

    def create
        @project = Project.new(project_params)
    
        if @project.save
          render json: @project, status: :created, location: @project
        else
          render json: @project.errors, status: :unprocessable_entity
        end
      end

    def show
        render json: @project
    end

    def update
        if @project.update(project_params)
          render json: @project
        else
          render json: @project.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @project.destroy
    end
    
    private

    def set_project
        @project = Project.find(params[:id])
    end
    
    def project_params
        params.require(:project).permit(:project_id, :name, :project_type, :project_manager, :start_date, :end_date, :client_id, :project_closure_status, :created_by, :updated_by)
    end

end
