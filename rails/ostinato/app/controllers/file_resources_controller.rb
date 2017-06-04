class FileResourcesController < ApplicationController
  before_action :authenticate_user!

  def index
    @files = FileResource.all
  end

  def new
    @file = FileResource.new
  end

  def create
    @file = FileResource.new(file_params)
    @file.user_id = current_user.id
    if @file.save
      redirect_to file_resources_path(id: @file.id), notice: "The file #{@file.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @file = FileResource.find(params[:id])
    @file.destroy
    redirect_to file_resources_path, notice:  "The file #{@file.name} has been deleted."
  end

  def download_file
    @file = FileResource.find(params[:id])
    send_file @file.attachment.path
  end

  private
  def file_params
    params.require(:file_resource).permit(:name, :attachment, :description)
  end
end
