# You need coffee-script and nodejs installed
def run(path)
  `coffee -p '#{path}' | node`
end

Dir['./**/*.coffee'].each{ |file| run file }
