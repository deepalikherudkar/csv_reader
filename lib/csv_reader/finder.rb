module CsvReader
  class Finder
    def initialize(parser, field_name, value)
      @parser = parser
      @value_to_find = value
      @field_name = field_name
    end

    def find
      index = @parser.headers.index(@field_name)

      @parser.data_rows.each do |row|
        return row if row[index] == @value_to_find
      end
    end
  end
end