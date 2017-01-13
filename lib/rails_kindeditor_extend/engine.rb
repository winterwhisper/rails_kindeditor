require "rails_kindeditor_extend"
require "rails"
require "action_controller"

module RailsKindeditorExtend
  class Engine < Rails::Engine

    initializer "rails_kindeditor_extend.assets_precompile" do |app|
      app.config.assets.precompile += RailsKindeditorExtend.assets
    end

    initializer "rails_kindeditor_extend.simple_form_and_formtastic" do
      require "rails_kindeditor_extend/simple_form" if Object.const_defined?("SimpleForm")
      require "rails_kindeditor_extend/formtastic" if Object.const_defined?("Formtastic")
    end

    initializer "rails_kindeditor_extend.helper_and_builder" do
      ActiveSupport.on_load :action_view do
        ActionView::Base.send(:include, RailsKindeditorExtend::Helper)
        ActionView::Helpers::FormBuilder.send(:include, RailsKindeditorExtend::Builder)
      end
    end

    initializer "rails_kindeditor_extend.image_process" do
      unless RailsKindeditorExtend.image_resize_to_limit.nil?
        KindeditorExtend::ImageUploader.class_eval do
          include CarrierWave::MiniMagick
          process :resize_to_limit => RailsKindeditorExtend.resize_to_limit
        end
      end
    end

  end
end
