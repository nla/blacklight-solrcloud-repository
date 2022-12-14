# frozen_string_literal: true

require_relative "lib/blacklight/solr_cloud/version"

ruby_version = File.read(File.join(__dir__, ".ruby-version"))

Gem::Specification.new do |spec|
  spec.name = "blacklight-solrcloud-repository"
  spec.version = Blacklight::SolrCloud::VERSION
  spec.authors = ["Yetrina Battad"]
  spec.email = ["hello@yetti.io"]

  spec.summary = "Blacklight repository to connect with a collection on a ZooKeeper managed SolrCloud cluster."
  spec.homepage = "https://github.com/nla/blacklight-solrcloud-repository"
  spec.license = "Apache-2.0"
  spec.required_ruby_version = ">= #{ruby_version}"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/yetti/blacklight-solrcloud-repository.git"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "blacklight", "~> 7.30"
  spec.add_dependency "rsolr"
  spec.add_dependency "zk", "~> 1.10"

  spec.add_development_dependency "bundler-audit"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rubocop-rake"
  spec.add_development_dependency "rubocop-rspec"
  spec.add_development_dependency "simplecov", "~> 0.21.2"
  spec.add_development_dependency "simplecov-json", "~> 0.2.3"
  spec.add_development_dependency "standard", "~> 1.18.1"
end
