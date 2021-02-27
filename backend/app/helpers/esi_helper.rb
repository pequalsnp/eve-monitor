module EsiHelper
    def esi_client
        Faraday.new(
            url: 'https://esi.evetech.net',
            headers: {'Accept' => 'application/json'}
        ) do |builder|
            builder.use :http_cache, store: Rails.cache, logger: Rails.logger
            builder.adapter Faraday.default_adapter
        end
    end
end