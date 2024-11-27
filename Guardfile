guard :minitest, all_on_start: true do
  def magenta(str) 
    "\e[35m#{str}\e[0m" 
  end 

  watch(%r{projects/.*/test/.*_test\.rb$}) do |m|
    puts "Watching file: #{m[0]}"
    print magenta("Detected change in test file: #{m[0]}\n")
    if system("ruby #{m[0]}")
      Dir.glob('projects/*/test/**/*_test.rb').each { |test_file| magenta("Running test: #{test_file}"); system("ruby #{test_file}") }
    end
  end

  watch(%r{projects/(.*)/lib/(.*)\.rb$}) do |m|
    project_name = m[1]
    file_name = m[2]
    test_file = "projects/#{project_name}/test/#{file_name}_test.rb"
    puts "Watching file: #{m[0]}"
    print magenta("Detected change in lib file: #{m[0]}, running test file: #{test_file}\n")
    if system("ruby #{test_file}")
      Dir.glob('projects/*/test/**/*_test.rb').each { |test_file| magenta("Running test: #{test_file}"); system("ruby #{test_file}") }
    end
  end

  watch(%r{projects/.*/test/test_helper\.rb$}) do |m|
    puts "Watching file: #{m[0]}"
    print magenta("Detected change in test helper: #{m[0]}\n")
    Dir.glob('projects/*/test/**/*_test.rb').each { 
      |test_file| 
        magenta("Running test: #{test_file}")
        system("ruby #{test_file}") 
    }
  end
end