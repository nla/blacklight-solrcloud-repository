require_relative "lib/blacklight/solr_cloud/version"

Gem::Specification.new do |spec|
  spec.name = "blacklight-solr_cloud"
  spec.version = Blacklight::SolrCloud::VERSION
  spec.authors = ["Yetrina Battad"]
  spec.email = ["hello@yetti.io"]

  spec.summary = "Blacklight repository to connect with a collection on a ZooKeeper managed SolrCloud cluster."
  spec.homepage = "https://github.com/nla/blacklight-solrcloud-repository"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.2"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nla/blacklight-solrcloud-repository.git"
  spec.metadata["changelog_uri"] = "https://github.com/nla/blacklight-solrcloud-repository/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "blacklight", "~> 7.30"
  spec.add_dependency "rails", "~> 7.0.4"
  spec.add_dependency "rsolr"
  spec.add_dependency "zk", "~> 1.10"

  spec.add_development_dependency "brakeman"
  spec.add_development_dependency "bundler-audit"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "rubocop-rails", "~> 2.16.1"
  spec.add_development_dependency "rubocop-rake"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "simplecov", "~> 0.21.2"
  spec.add_development_dependency "simplecov-json", "~> 0.2.3"
  spec.add_development_dependency "standard", "~> 1.16.1"
end
