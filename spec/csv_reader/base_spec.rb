require_relative '../spec_helper'

describe CsvReader::Base do
  before :all do
    @csv_file = File.join(Dir.pwd, "spec/data/sample.csv")
    @dipu_row = ["Deepali","dipu","deepali@bangthetable.com","30","F"]
  end

  context "Respond to methods" do

    it "should not respond to invalid methods" do
      lambda{
        CsvReader::Base.new(@csv_file).abc
      }.should raise_exception NoMethodError
    end

    it "should respond to find_by_<valid field name> methods" do
      lambda{
        CsvReader::Base.new(@csv_file).find_by_name
      }.should_not raise_exception NoMethodError
    end

    it "should not respond to find_by_<invalid field name> methods" do
      lambda{
        CsvReader::Base.new(@csv_file).find_by_abc
      }.should raise_exception NoMethodError
    end

  end

  context "find" do
    it "should find the correct row" do
      CsvReader::Base.new(@csv_file).find_by_login("dipu").should eq @dipu_row
    end
  end

end