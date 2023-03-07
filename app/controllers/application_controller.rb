class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/rawmaterials" do
    RawMaterial.all.to_json
  end

  get "/rawmaterials/:id" do
   raw_material = RawMaterial.find(params[:id])
  raw_material.to_json
 end

  post "/rawmaterials" do
    raw_material = RawMaterial.create(params)
    raw_material.to_json
  end

  patch "/rawmaterials/:id" do
    raw_material = RawMaterial.find(params[:id])
    raw_material.update(params)
    raw_material.to_json
  end

  delete "/rawmaterials/:id" do
    raw_material = RawMaterial.find(params[:id])
    raw_material.destroy
    raw_material.to_json
  end
  # delete "/rawmaterials/:id" do 
  #   rawmaterial = rawmaterial.find_by(id: params[:id])
  #   rawmaterial.destroy
  #   {
  #     "message":"Successfully Delete recipe #{params[:id]}",
  #     "Status":"HTTP_Status_OK"
  #   }.to_json()
  # end

  get "/feedbacks" do
    Feedback.all.to_json
  end

  post "/feedbacks" do
    feedback = Feedback.create(params)
    feedback.to_json
  end

  patch "/feedbacks/:id" do
    feedback = Feedback.find(params[:id])
    feedback.update(params)
    feedback.to_json
  end

  delete "/feedbacks/:id" do
    feedback = Feedback.find(params[:id])
    feedback.destroy
    feedback.to_json
  end

  get "/users" do
    User.all.to_json
  end

  post "/users" do
    user = User.create(params)
    user.to_json
  end

  patch "/users/:id" do
    user = User.find(params[:id])
    user.update(params)
    user.to_json
  end

  delete "/users/:id" do
    user = User.find(params[:id])
    user.destroy
    user.to_json
  end
  
end
