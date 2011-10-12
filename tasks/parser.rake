require 'rake/extensiontask'
require 'rake/javaextensiontask'

Rake::JavaExtensionTask.new 'HttpParser' do |ext|
  ext.ext_dir = "ext/http/picard/http"
end

Rake::JavaExtensionTask.new 'MultipartParser' do |ext|
  ext.ext_dir = "ext/http/picard/http"
end