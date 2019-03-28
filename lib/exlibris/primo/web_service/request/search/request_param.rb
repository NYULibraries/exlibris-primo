module Exlibris
  module Primo
    module WebService
      module Request
        #
        #
        #
        class RequestParam
          include WriteAttributes
          include XmlUtil
          attr_accessor :key, :value

          def to_xml
            build_xml do |xml|
              xml.RequestParam(:key => key) {
                xml << value
              }
            end
          end
        end
      end
    end
  end
end