require 'nokogiri'
require 'open-uri'
module Holidays
  module Ar
    class Loader
      def initialize(year=Date.today.year)
        @year = year
      end

      def exec
        holidays = []
        doc.search('.mes').each_with_index do |mes, index|
          month = index + 1
          mes.search('.bg-primary', '.bg-nl', '.bg-success').each do |day|
            holidays << Date.new(@year, month, day.text.to_i)
          end
        end

        holidays
      end

      private

      def uri
        if @year == Date.today.year
          "https://www.argentina.gob.ar/interior/feriados"
        else
          "https://www.argentina.gob.ar/interior/feriados#{@year}"
        end
      end

      def doc
        Nokogiri::HTML(open(uri))
      end
    end
  end
end

