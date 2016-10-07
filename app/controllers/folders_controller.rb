class FoldersController < ApplicationController
  def create
    @folder = Folder.create(folder_params)
    if @folder.errors
      render json: { errors: @folder.errors.full_messages }, status: 422
    else
      render action: :show, status: 200
    end 
  end

  def index
    @folders = Folder.all
    render json: @folders.as_json , status: 200
  end

  def destroy
    @folder = Folder.find(params[:id])
    @folder.destroy
    render json: {} , status: 200
  end

  private 
  def folder_params
    params.require(:folder).permit(:name,:folder_type, :description)
  end
end