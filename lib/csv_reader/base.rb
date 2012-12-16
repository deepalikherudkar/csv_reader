module CsvReader
  class Base
    def initialize(csv_file)
      csv_data = CsvReader::Reader.new(csv_file).read
      @parser  = CsvReader::Parser.new(csv_data)
    end

    def method_missing(*args)
      method_name = args[0]
      value_to_find = args[1]

      arr = method_name.to_s.split('find_by_')
      if arr.first == ""
        field_name = arr[1]

        if @parser.headers.include?(field_name)
          CsvReader::Finder.new(@parser, field_name, value_to_find).find
        else
          raise NoMethodError
        end

      else
        raise NoMethodError
      end
    end
  end

end