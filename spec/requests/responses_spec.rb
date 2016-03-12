require 'rails_helper'

describe 'responses', type: :request do
  let(:user) { FactoryGirl.create(:user, email: 'email@sample.com', password: 'password') }
  let(:response) { FactoryGirl.create(:response, reply: 'Crikey Mate') }

  before do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    get "/responses/#{response.id}", nil, headers
  end

  it 'should get a collection of responses' do
    response_body = JSON.parse(response.reply)
    expect(response_body['body']).to eq(response.reply)
  end
end

describe "GET /responses", type: :request do
  let(:user) { FactoryGirl.create(:user, email: 'email@sample.com', password: 'password') }

  it "should output in JSON API format" do
    response1 = FactoryGirl.create(:response, reply: "First response")
    response2 = FactoryGirl.create(:response, reply: "Second response")

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    get "/responses", format: :json
    response_body = JSON.parse(response.body)
    expect(response.status).to eq(200)
    expect(response_body).to include("data")

    first_response = response_body['data'][0]
    expect(first_response["type"]).to eq("responses")
    expect(first_response["attributes"]["body"]).to eq(response1.reply)

    second_response = response_body['data'][1]
    expect(second_response["type"]).to eq("responses")
    expect(second_response["attributes"]["body"]).to eq(response2.reply)
  end
end