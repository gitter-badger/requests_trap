class RequestsController < ApplicationController

  def trap
    @request = Request.new

    @request.remote_ip = request.remote_ip
    @request.method = request.method
    @request.scheme = request.scheme
    @request.query_string = request.query_string
    @request.query_params = request.query_parameters
    @request.cookies = request.cookies
    @request.headers = request.headers
    @request.trap_id = params[:trap_id]

    respond_to do |format|
      if @request.save
        format.html { render status: 200 }
      else
        format.html { render status: 400 }
      end
    end
  end

  def index
    @requests = Request.trapped_by(params[:trap_id]).order("created_at DESC")

    respond_to do |format|
      format.html
      format.js
    end
  end

  def show
    @request = Request.find(params[:id])

    respond_to do |format|
      format.html
    end
  end
end
