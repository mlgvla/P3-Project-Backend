class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # get all clothes
  get "/clothes" do
    clothings = Clothing.all
    clothings.to_json
  end

  # get one single piece of clothing
  get "/clothes/:id" do
    clothing = Clothing.find(params[:id])
    clothing.to_json(include: { reviews: { include: :user } })
  end

  # delete review
  delete "/reviews/:id" do
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end

  #post review
  post "/reviews" do
    review = Review.create(
      comment: params[:comment],
      user_id: params[:user_id],
      clothing_id: params[:clothing_id],
    )
    review.to_json(include: :user )
  end

  #patch review
  patch "/reviews/:id" do
    review = Review.find(params[:id])
    review.update(
      comment: params[:comment],
    )
    review.to_json(include: :user)
  end
end
