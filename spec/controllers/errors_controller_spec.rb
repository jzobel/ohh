require 'spec_helper'

describe ErrorsController do
  before do
    auth subject
  end

  it { should respond_to :index }
  describe :index do
    it 'renders the index view' do
      get 'index'
      response.status.should be 200
      response.should render_template('errors/index')
    end
  end

  it { should respond_to :bam }
  describe :bam do
    it 'does not render anything' do
      begin
        get 'bam'
      rescue
      end
      response.should_not render_template('errors/index')
    end
    it 'raises an exception' do
      expect{ subject.bam() }.to raise_error 'Bam!'
    end
  end
end
