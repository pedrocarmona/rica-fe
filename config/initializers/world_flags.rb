WorldFlags.config do |c|
  c.auto_select!
  c.available_locales = [:pt, :gb]
  c.locale_source_priority = [:param, :browser, :ip]
  #c.reset!
  #c.raise_error!
  # c.available_locales = [:en, :da]
  # c.locale_source_priority = [:param, :domain, :browser, :ip]

  # c.languages = languages_hash # fx loaded from a yaml file
  # c.countries = countries_hash # fx loaded from a yaml file
  # c.locale_flag_map = hash
end

cc_file_en = File.join(Rails.root, 'config/country_codes/locale_countries.en.json')
country_codes_en = JSON.parse File.read(cc_file_en)
WorldFlags.languages = country_codes_en



