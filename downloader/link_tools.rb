module LinkTools
  def find_link_with(regexp)
    crawler = Mechanize.new
    page = crawler.get(base_url)

    uri = page.links.find do |url|
      url.href =~ regexp
    end    
  end

  private
  
  def base_url
    fail 'You have to define your own base_url method!'
  end
end
