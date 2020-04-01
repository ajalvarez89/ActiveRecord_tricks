class StatusesController < ApplicationController
  def destroy
    @status = Status.find(params[:id])
    @status.destroy
  end
end
