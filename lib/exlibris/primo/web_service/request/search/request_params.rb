module Exlibris
  module Primo
    module WebService
      module Request
        module RequestParams
          #
          # Returns a lambda that takes a Nokogiri::XML::Builder as an argument
          # and appends query terms XML to it.
          #
          def request_params_xml
            lambda do |xml|
              xml.RequestParams {
                request_params.each do |request_param|
                  xml << request_param.to_xml
                end
              }
            end
          end
          protected :request_params_xml

          def request_params
            @request_params ||= []
          end

          def add_request_param(key, value)
            request_params << RequestParam.new(:key => key, :value => value)
          end
        end
      end
    end
  end
end