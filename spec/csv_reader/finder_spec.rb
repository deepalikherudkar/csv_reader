require_relative '../spec_helper'

describe CsvReader::Finder do
  before :all do
    @csv_data = %{
        name, login, email, age, sex
        Unni, unnitallman, unni@bangthetable.com, 28, M
        Deepali, dipu, deepali@bangthetable.com, 30, F
    }

    @dipu_row = ["Deepali","dipu","deepali@bangthetable.com","30","F"]

    @parser   = CsvReader::Parser.new(@csv_data)
  end

  it "should find correct rows" do
    CsvReader::Finder.new(@parser, "login", "dipu").find.should eq @dipu_row
  end

  it "should return nil if row not found" do
    CsvReader::Finder.new(@parser, "login", "hobbit").find.should be_nil
  end
end