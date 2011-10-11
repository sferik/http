#!/usr/bin/env rake
require "bundler/gem_tasks"
FileList["tasks/*.rake"].each { |file| load file }

task :default => [:ragel, :spec]