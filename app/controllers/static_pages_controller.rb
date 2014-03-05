class StaticPagesController < ApplicationController
  def home
    @images = Dir['public/quinta/images/*.*'].map {|f| f.sub('public','') }
    print "\n\n\n\n"
    print @images
  end

  def contacts
  end

  def explore
    @images = Dir['public/quinta/images/*.*'].map {|f| f.sub('public','') }

  end
end
