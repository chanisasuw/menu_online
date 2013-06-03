# encoding: UTF-8
require 'feature_spec_helper'

describe 'some stuff which requires js', :js => true do
  it 'will use the default js driver' do
    visit "/manage_users"
  end
end
