class ErrorsController < ApplicationController
  
  
  def index
    render
  end
  
  def bam
    raise 'Bam!'
  end

end
