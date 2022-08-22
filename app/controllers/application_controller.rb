class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  get "/clothes" do
    { message: "some clothes" }.to_json
  end
end
