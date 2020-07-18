require 'rails_helper'

describe RushingsController, type: :controller do

  describe 'index' do
    it 'returns a 200 response status' do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
