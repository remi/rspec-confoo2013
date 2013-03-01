require 'spec_helper'

describe "Home#index" do
  subject { page }
  before { visit root_path }
  it { should have_selector("h1.main-title") }
end
