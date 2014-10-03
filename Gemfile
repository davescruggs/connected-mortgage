source 'https://rubygems.org'
ruby '2.1.2'
gem 'rails', '4.1.6'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development
gem 'bootstrap-sass'
gem 'high_voltage'
gem 'omniauth'
# had to do the following to avoid a bignum conversion issue with the client secret
gem 'omniauth-salesforce', :git => 'https://github.com/realdoug/omniauth-salesforce'
gem 'pg'
gem 'thin'
gem "googlecharts", :require => "gchart"
gem 'restforce', :git => 'https://github.com/davescruggs/restforce.git'
group :development do
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'hub', :require=>nil
  gem 'quiet_assets'
  gem 'rails_layout'
end
group :production do
  gem 'rails_12factor'
end
