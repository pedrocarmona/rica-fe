#Add the fonts path
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'fonts')

#Precompile additional assets
Rails.application.config.assets.precompile += %w( .svg .eot .woff .ttf )
