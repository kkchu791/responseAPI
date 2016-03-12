require 'rails_helper'

describe 'responses', type: :request do
  let(:user) { FactoryGirl.create(:user, email: 'email@sample.com', password: 'password') }
  let(:response) { FactoryGirl.create(:response, body: 'Two programmers walked into a bar') }

  before do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    get "/responses/#{response.id}", nil, headers
  end

  it 'should get a collection of responses' do
    response_body = JSON.parse(response.body)
    expect(response_body['body']).to eq(response.body)
  end
end