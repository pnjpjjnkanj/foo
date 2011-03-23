require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../../lib/path_file_operations')

describe PathFileOperations do
  before :each do
    @path_file_operations = PathFileOperations.new
  end

  it "should join correct path and correct file name" do
    @path_file_operations.join('C:\\my_folder\\', 'foo.txt').should == 'C:\\my_folder\\foo.txt'
  end

  it "should join incorrect path and incorrect file name" do
    @path_file_operations.join('C:\\my_folder', 'new\\foo.txt').should == 'C:\\my_folder\\foo.txt'
  end

  it "should return correct path", :urgent => false do
    @path_file_operations.get_correct_path('C:\\my_folder').should == 'C:\\my_folder\\'
  end

  it "should return correct file name" do
    @path_file_operations.get_correct_file_name('my\\foo.txt').should == 'foo.txt'
    @path_file_operations.get_correct_file_name('new\\my\\foo.txt').should == 'foo.txt'
  end

  it 'should react on some unusual behavior' do
    @path_file_operations.join('c:', 'foo.txt').should == 'c:\\foo.txt'
    @path_file_operations.join('.', 'foo.txt').should == '.\\foo.txt'
    @path_file_operations.join('..\\', 'foo.txt').should == '..\\foo.txt'
    @path_file_operations.join('.\\', 'foo.txt').should == '.\\foo.txt'
    @path_file_operations.join('d:\\', '\\foo.txt').should == 'd:\\foo.txt'
  end
end
