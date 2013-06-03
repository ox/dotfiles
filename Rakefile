task :install do |t|
  Dir['./*'].each do |f|
    File.link(f, "~/test/#{f}")
  end
end
