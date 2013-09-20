require 'spec_helper'

describe 'errors/index' do
  subject { rendered }
  before do
    render
  end
  
  it 'should have a button group' do
    subject.should have_css('div.btn-group')
  end
  
  describe 'button group' do
    
    it 'should have a button "Not Found"' do
      subject.should have_css('div.btn a', text: 'Not Found')
    end
    it 'should have a button "Internal Error"' do
      subject.should have_css('div.btn a', text: 'Internal Error')
    end
  end
end
