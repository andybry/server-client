ServerClient::Application.routes.draw do

  get "/template/:template", to: "template#index", template: /.*/, as: :templates
  get "/article", to: "article#index", as: :article

end
