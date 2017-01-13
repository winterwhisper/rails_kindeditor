# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rails_kindeditor_extend/version"

Gem::Specification.new do |s|
  s.name        = "rails_kindeditor-extend"
  s.version     = RailsKindeditorExtend::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = "Macrow"
  s.email       = "Macrow_wh@163.com"
  s.homepage    = "http://github.com/winterwhisper"
  s.summary     = "Kindeditor for Ruby on Rails"
  s.description = "rails_kindeditor will helps your rails app integrate with kindeditor, including images and files uploading."
  s.license = 'MIT'

  s.rubyforge_project = "rails_kindeditor-extend"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency("carrierwave")
  s.add_dependency("mini_magick")
end
