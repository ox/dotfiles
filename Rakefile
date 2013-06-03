task :install, :path do |t, path|
  path = "~/" if path.to_h.nil?

  Dir['./.*'].each do |f|
    next if f == "." or f == ".."

    source = File.expand_path(f)
    dest = File.expand_path("#{path}/#{f}")

    next unless File.file? source or f == "Rakefile"
    File.unlink(dest) if File.exists? dest

    File.link(source, dest)
  end
end

task :uninstall, :path do |t, path|
  path = "~/" if path.to_h.nil?

  Dir['./.*'].each do |f|
    next if f == "." or f == ".."

    dest = File.expand_path("#{path}/#{f}")

    next if not File.file? dest
    File.unlink(dest) if File.exists? dest
  end
end
