require_relative '../spec_helper'

describe CsvReader::Parser do
  before :all do
    @csv_data = %{
        name, login, email, age, sex
        Unni, unnitallman, unni@bangthetable.com, 28, M
        Deepali, dipu, deepali@bangthetable.com, 30, F
    }
  end

  context "rows" do
    it "should return each row as an array" do
      CsvReader::Parser.new(@csv_data).rows.size.should eq 3
    end
  end

  context "headers" do
    it "should return the correct header row" do
      CsvReader::Parser.new(@csv_data).headers.should eq ["name","login","email","age","sex"]
    end
  end

  context "data rows" do
    it "should return correct number of data rows" do
      CsvReader::Parser.new(@csv_data).data_rows.size.should eq 2
    end

    it "should return correct data" do
      CsvReader::Parser.new(@csv_data).data_rows[1].should eq ["Deepali","dipu","deepali@bangthetable.com","30","F"]
    end
  end
end