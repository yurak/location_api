require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'valid' do
    expect(Location.new.save).to eq true
  end
end
