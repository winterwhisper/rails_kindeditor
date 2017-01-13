Rails.application.routes.draw do
  namespace :kindeditor_extend do
    post "/upload" => "assets#create"
    get  "/filemanager" => "assets#list"
  end
end
