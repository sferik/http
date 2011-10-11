# Compile Http's Ragel-powered FSMs as C/Java extensions

parser_src = []

%w(HttpParser MultipartParser).each do |parser|
  src = "ext/http/picard/http/#{parser}.java"
  parser_src << src

  file src => "parser/#{parser}.rl" do |task|
    sh "ragel #{task.prerequisites.first} -J -G2 -o #{src}"
  end
end

task :ragel => parser_src
