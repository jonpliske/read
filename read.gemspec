Gem::Specification.new do |gs|
  gs.name        = "read"
  gs.version     = File.read(File.dirname(__FILE__)+'/VERSION')
  gs.homepage    = "http://github.com/jonpliske/read"
  gs.description = File.read(File.dirname(__FILE__)+'/README')
  gs.summary     = "Read is Rocco that runs in your browser."
  gs.authors     = ["Myles Byrne", "Jon Pliske"]

  gs.post_install_message = <<-END
**********************************

  Now run this:

    ln -s "`gem environment gemdir`/gems/#{gs.version}" ~/.pow/read

  Sorry.

**********************************
  END


  gs.files = Dir['**/**/*'].reject do |p|
    p == 'TODO.md' or p =~ /^pkg/
  end

  gs.add_dependency 'rocco', '~>0.8.2'
  gs.add_dependency 'sinatra', '~>1.2.6'
end
