class ApplicationController < Injixo::ApplicationController

  layout 'injixo-fluid'
  
  def index
  end
  
  def err
    raise "Bang"
  end

end
