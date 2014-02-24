## Set the host name for URL creation
#  pages_to_visit = Category.all.collect{ |cat| category_path(cat) }
#  pages_to_visit += Film.all.collect{ |film| film_path(film) }
#  pages_to_visit += Director.all.collect{ |dir| director_path(dir) }
#  pages_to_visit += Writer.all.collect{ |writer| writer_path(writer) }
#  pages_to_visit += Star.all.collect{ |star| star_path(star) }
#  pages_to_visit += Genere.all.collect{ |gen| genere_path(gen) }
#SitemapGenerator::Sitemap.default_host = "http://uat.ultravie.co.uk:8080"
#SitemapGenerator::Sitemap.create do
#  # Put links creation logic here.
#  #
#  # The root path '/' and sitemap index file are added automatically for you.
#  # Links are added to the Sitemap in the order they are specified.
#  #
#  # Usage: add(path, options={})
#  #        (default options are used if you don't specify)
#  #
#  # Defaults: :priority => 0.5, :changefreq => 'weekly',
#  #           :lastmod => Time.now, :host => default_host
#  #
#  # Examples:
#  #
#  # Add '/articles'
#  #
#  #   add articles_path, :priority => 0.7, :changefreq => 'daily'
#  #
#  # Add all articles:
#  #
#  #   Article.find_each do |article|
#  #     add article_path(article), :lastmod => article.updated_at
#  #   end
#
#pages_to_visit.each do |url|
#    add url
#  end
#
#end
