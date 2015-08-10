require 'rails_helper'

RSpec.describe Resource, type: :model do
  describe 'the validations' do
    it { is_expected.to validate_presence_of :uri }
    
    it 'sets the name according to the uri if it is left blank' do
      uri = Faker::Internet.url
      resource = Resource.new(uri: uri)
      expect(resource.name).to eq uri
    end
  end
end
