module CsvReader
  class Parser
    def initialize(csv_data)
      @csv_data = csv_data
      parse
    end

    def parse
      @rows = @csv_data.split("\n").reject{|x| x.split == []}
    end

    def rows
      @rows
    end

    def headers
      @rows[0].split(",").map{|x| x.split.first}
    end

    def data_rows
      rows = []
      1.upto(@rows.length-1).each do |i|
        rows << @rows[i].split(",").map{|x| x.split.first}
      end
      rows
    end

  end
end