# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{garterbelt}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kane Baccigalupi"]
  s.date = %q{2011-04-12}
  s.description = %q{Garterbelt is a Ruby HTML/XML markup framework inspired by Erector and Markaby. Garterbelt maps html tags to methods allowing the intuitive construction of HTML pages using nothing but Ruby. And because it is all Ruby all the time, views benefit from the dryness of inheritance, modules and all the meta magic that Ruby can imagine. Stockings not included.}
  s.email = %q{baccigalupi@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc",
    "TODO"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "TODO",
    "VERSION",
    "garterbelt.gemspec",
    "lib/garterbelt.rb",
    "lib/page.rb",
    "lib/renderers/cache.rb",
    "lib/renderers/closed_tag.rb",
    "lib/renderers/comment.rb",
    "lib/renderers/content_rendering.rb",
    "lib/renderers/content_tag.rb",
    "lib/renderers/doctype.rb",
    "lib/renderers/renderer.rb",
    "lib/renderers/text.rb",
    "lib/renderers/xml.rb",
    "lib/stocking.rb",
    "lib/support/string.rb",
    "lib/view.rb",
    "spec/benchmark/templates/erector.rb",
    "spec/benchmark/templates/garterbelt.rb",
    "spec/benchmark/vs_erector.rb",
    "spec/garterbelt_spec.rb",
    "spec/integration/expectations/general_view.html",
    "spec/integration/expectations/variables/view_with_user_and_params.html",
    "spec/integration/expectations/variables/view_with_user_email.html",
    "spec/integration/expectations/view_partial_nest.html",
    "spec/integration/expectations/view_with_tags.html",
    "spec/integration/templates/view_partial_nest.rb",
    "spec/integration/templates/view_with_cache.rb",
    "spec/integration/templates/view_with_partial.rb",
    "spec/integration/templates/view_with_partial_2.rb",
    "spec/integration/templates/view_with_tags.rb",
    "spec/integration/templates/view_with_vars.rb",
    "spec/integration/view_spec.rb",
    "spec/page_spec.rb",
    "spec/renderers/cache_spec.rb",
    "spec/renderers/closed_tag_spec.rb",
    "spec/renderers/comment_spec.rb",
    "spec/renderers/content_tag_spec.rb",
    "spec/renderers/doctype_spec.rb",
    "spec/renderers/text_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/mock_view.rb",
    "spec/support/puters.rb",
    "spec/view/view_basics_spec.rb",
    "spec/view/view_caching_spec.rb",
    "spec/view/view_partial_spec.rb",
    "spec/view/view_rails_type_helpers.rb",
    "spec/view/view_render_spec.rb",
    "spec/view/view_variables_spec.rb"
  ]
  s.homepage = %q{http://github.com/baccigalupi/garterbelt}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Garterbelt is a Ruby HTML/XML markup framework. It is san DSL. Just all Ruby, all the time.}
  s.test_files = [
    "spec/benchmark/templates/erector.rb",
    "spec/benchmark/templates/garterbelt.rb",
    "spec/benchmark/vs_erector.rb",
    "spec/garterbelt_spec.rb",
    "spec/integration/templates/view_partial_nest.rb",
    "spec/integration/templates/view_with_cache.rb",
    "spec/integration/templates/view_with_partial.rb",
    "spec/integration/templates/view_with_partial_2.rb",
    "spec/integration/templates/view_with_tags.rb",
    "spec/integration/templates/view_with_vars.rb",
    "spec/integration/view_spec.rb",
    "spec/page_spec.rb",
    "spec/renderers/cache_spec.rb",
    "spec/renderers/closed_tag_spec.rb",
    "spec/renderers/comment_spec.rb",
    "spec/renderers/content_tag_spec.rb",
    "spec/renderers/doctype_spec.rb",
    "spec/renderers/text_spec.rb",
    "spec/spec_helper.rb",
    "spec/support/mock_view.rb",
    "spec/support/puters.rb",
    "spec/view/view_basics_spec.rb",
    "spec/view/view_caching_spec.rb",
    "spec/view/view_partial_spec.rb",
    "spec/view/view_rails_type_helpers.rb",
    "spec/view/view_render_spec.rb",
    "spec/view/view_variables_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ru_pol>, ["= 0.1.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.8"])
      s.add_runtime_dependency(%q<moneta>, [">= 0.6.0"])
      s.add_development_dependency(%q<hashie>, ["~> 1.0"])
      s.add_development_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<hashie>, ["~> 1.0"])
      s.add_development_dependency(%q<rbench>, [">= 0"])
      s.add_runtime_dependency(%q<ru_pol>, [">= 0.1.2"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.8"])
      s.add_runtime_dependency(%q<moneta>, [">= 0.6.0"])
    else
      s.add_dependency(%q<ru_pol>, ["= 0.1.2"])
      s.add_dependency(%q<activesupport>, [">= 2.3.8"])
      s.add_dependency(%q<moneta>, [">= 0.6.0"])
      s.add_dependency(%q<hashie>, ["~> 1.0"])
      s.add_dependency(%q<rspec>, ["~> 2.3.0"])
      s.add_dependency(%q<yard>, ["~> 0.6.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<hashie>, ["~> 1.0"])
      s.add_dependency(%q<rbench>, [">= 0"])
      s.add_dependency(%q<ru_pol>, [">= 0.1.2"])
      s.add_dependency(%q<activesupport>, [">= 2.3.8"])
      s.add_dependency(%q<moneta>, [">= 0.6.0"])
    end
  else
    s.add_dependency(%q<ru_pol>, ["= 0.1.2"])
    s.add_dependency(%q<activesupport>, [">= 2.3.8"])
    s.add_dependency(%q<moneta>, [">= 0.6.0"])
    s.add_dependency(%q<hashie>, ["~> 1.0"])
    s.add_dependency(%q<rspec>, ["~> 2.3.0"])
    s.add_dependency(%q<yard>, ["~> 0.6.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<hashie>, ["~> 1.0"])
    s.add_dependency(%q<rbench>, [">= 0"])
    s.add_dependency(%q<ru_pol>, [">= 0.1.2"])
    s.add_dependency(%q<activesupport>, [">= 2.3.8"])
    s.add_dependency(%q<moneta>, [">= 0.6.0"])
  end
end
