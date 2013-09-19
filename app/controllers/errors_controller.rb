class ErrorsController < ApplicationController
  
  
  def index
    render
  end
  
  def error
    raise "Bang"
  end

end
