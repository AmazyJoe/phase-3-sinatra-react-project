class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/rawmaterials" do
    RawMaterial.all.to_json
  end

  get "/feedbacks" do
    Feedback.all.to_json
  end

  get "/users" do
    User.all.to_json
  end
  # get "/rawmaterials/id" do
  #   RawMaterial.all.to_json
  # end
  
end
