Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: "login", sign_out: "logout"}
  get 'home/index'
  get 'home/show'

  # ログイン画面をホームにする
  root 'home#index'

end
