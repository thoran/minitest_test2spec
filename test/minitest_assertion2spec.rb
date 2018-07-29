# test/minitest_assertion2spec.rb

require 'bundler/setup'
require 'fileutils'
require 'minitest/autorun'

describe "minitest_assertion2spec" do

  before do
    @root_directory = File.expand_path(File.join(File.dirname(__FILE__), '..'))
    @program_name = @root_directory + '/' + File.join('bin', 'minitest_assertion2spec')
    @fixtures_directory = @root_directory + '/' + File.join('test', 'fixtures')
    @tmp_directory = @root_directory + '/' + File.join('test', 'tmp')
    FileUtils.mkdir(@tmp_directory)
    FileUtils.cp(@fixtures_directory + '/' + 'assert_style.rb', @tmp_directory + '/' + 'test_file.rb')
  end

  it "works" do
    command = "/usr/bin/env ruby #{@program_name} #{@tmp_directory}"
    system command
    expected = File.read(@fixtures_directory + '/' + 'spec_style.rb')
    found = File.read(@tmp_directory + '/' + 'test_file.rb')
    expect(found).must_equal expected
  end

  after do
    FileUtils.rm(@tmp_directory + '/' + 'test_file.rb')
    FileUtils.rmdir(@tmp_directory)
  end

end
