Rails.application.routes.draw do
  get "/", to: "project#index"
  get "/projects", to: "project#index"
  post "/todos", to: "todo#new"
  post "/projects", to: "project#new"
  patch "/projects/:projectid/todo/:todoid", to: "todo#edit"
end
