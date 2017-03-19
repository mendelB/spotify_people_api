require 'rails_helper'

RSpec.describe Person, type: :model do

  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:favorite_city) }
end