require 'rails_helper'

RSpec.describe Rushing, type: :model do
  let(:rushing) { FactoryBot.create(:rushing) }

  describe 'validations' do
    it { is_expected.to validate_numericality_of(:td).is_greater_than_or_equal_to(0) }
  end
end
