# Compile Http's Ragel-powered FSMs as C/Java extensions

parser_src = []

%w(HttpParser MultipartParser).each do |parser|
  src = "ext/http/picard/http/#{parser}.java"
  parser_src << src

  file src => "parser/HttpParser.rl" do |t|
    sh "ragel #{t.prerequisites.last} -J -G2 -o #{t.name}"
  end
end

task :ragel => parser_src
