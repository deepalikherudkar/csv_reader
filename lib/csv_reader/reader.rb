module CsvReader
  class Reader
    def initialize(file)
      @file = File.open(file)
    end

    def read
      @file.read
    end
  end
end