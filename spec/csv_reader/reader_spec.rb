require_relative '../spec_helper'

describe CsvReader::Reader do
  it "should read the csv file" do
    csv_file = File.join(Dir.pwd, "spec/data/sample.csv")
    CsvReader::Reader.new(csv_file).read.should include("deepali@bangthetable.com")
  end
end