require 'spec_helper'

describe "Palette Model" do
  let(:palette) { Palette.new }
  it 'can be created' do
    palette.should_not be_nil
  end
end
