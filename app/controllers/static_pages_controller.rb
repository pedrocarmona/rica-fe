class StaticPagesController < ApplicationController
  include WorldFlags::Helper::All

  before_filter :set_locale

  def home
    print "###############\n"
    print I18n.locale
    print @country_code
    print @locale
    print "###############\n"
    @images = Dir['public/quinta/slider/*.*'].map {|f| f.sub('public','') }
    print "\n\n\n\n"
    print @images
  end

end
