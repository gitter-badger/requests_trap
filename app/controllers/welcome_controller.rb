class WelcomeController < ApplicationController
  def index
    @requests = Request.select(:trap_id).distinct

  end
end
