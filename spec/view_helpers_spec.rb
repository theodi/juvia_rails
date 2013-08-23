require 'spec_helper'

describe JuviaRails::ViewHelpers do
  
  class TestView < ActionView::Base
  end
  
  before :all do
    @view = TestView.new
  end
  
  it 'should mix in view helpers on initialization' do
    @view.should respond_to(:juvia_comments)
  end
  
end