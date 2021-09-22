class URLShortener
    attr_accessor :url_shortener

    def initialize
        @url_shortener = {}
        @alphabeto = array = ('a'..'z').to_a.push(('A'..'Z').to_a).flatten
    end

    def shorten(url)
        if @url_shortener.values.include?(url)
            @url_shortener.each do |key, value|
                puts "ERROR!"
                puts "Essa URL já se encontra encurtada."
                puts key + ' : ' + value if value == url
            end
            return
        end
        key = ""
        @alphabeto.sample(6).each { |char| key += char}
        @url_shortener[key] = url
    end

    def restore(short)
        if @url_shortener.keys.include?(short)
            @url_shortener.each do |key, value|
                puts key + ' : ' + value if key == short
            end
        else
            puts "ERROR!"
            puts "Essa abreviação não existe."
        end
    end
end

encurtador = URLShortener.new
encurtador.shorten("www.google.com")
encurtador.url_shortener