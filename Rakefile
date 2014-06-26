# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'


begin
  require 'bundler'
  Bundler.require
rescue LoadError
end
Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'ASA Experiment'
  app.frameworks += ["AVFoundation"]
  app.files_dependencies 'app/controllers/stream_test_controller.rb' => 'app/helpers/sounds_helpers.rb'
  app.files_dependencies 'app/controllers/test_subject_info_controller.rb' => 'app/helpers/sounds_helpers.rb'
  app.identifier = 'com.mt.asa-experiment'
  app.codesign_certificate = "iPhone Developer: Pekka Riihonen (Y7WC7F2798)"

  app.provisioning_profile = '/users/pudidis/Desktop/ASA_Experiment_Profile.mobileprovision'
  app.testflight.api_token = 'bc805f4e42f49147750b28a4baa655fe_MTkzNTY0NDIwMTQtMDYtMjUgMTI6NDI6MDIuMDQzNjg5'
  app.testflight.team_token = 'e51bef1b685c0444414d7b623e7d1e3a_Mzk4NTQ1MjAxNC0wNi0yNSAxNzo1MTo0NS40NzY3NjA'
  app.testflight.app_token = '19e9d552-a41f-4933-9a95-7783f727cecc'
end
