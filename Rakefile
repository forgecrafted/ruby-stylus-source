require 'bundler'
require 'multi_json'
require 'open-uri'
Bundler::GemHelper.install_tasks

def say(line)
  puts "  \e[32m=>\e[0m #{line}"
end

def execute(banner, command)
  say(banner + "...")
  output = `#{command} 2>&1`
  unless $?.success?
    $stderr.puts("  \e[31mOops, something went wrong!\e[0m\n\n")
    $stderr.puts(output)
    exit(1)
  end
  output
end

desc "Downloads stylus into './vendor' and checks the latest released tag"
task :update do
  raw = open('http://registry.npmjs.org/stylus') { |io| io.binmode.read }
  metadata = MultiJson.decode(raw)
  current_version = File.read('VERSION')
  version = metadata['dist-tags']['latest']
  tarball = metadata['versions'][version]['dist']['tarball']

  say "Updating stylus source from #{current_version} to #{version}"

  execute 'cleaning up old files', 'rm -rf vendor'
  execute "download stylus #{version}", "wget #{tarball} -O stylus.tgz"
  execute "upacking stylus #{version}", 'tar -zxvf stylus.tgz'
  execute 'cleaning up', 'rm stylus.tgz package/.npmignore'
  execute 'updating stylus dependencies', 'mv package vendor && cd vendor && npm install .'
  say 'updating VERSION file'
  File.open('VERSION', 'w') { |file| file.write(version) }
  say 'done!'
end