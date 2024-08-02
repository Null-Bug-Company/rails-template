# frozen_string_literal: true

require 'tmpdir'

def add_template_repository_to_source_path
  source_paths.unshift(tempdir = Dir.mktmpdir('boilerplate-api-'))
  at_exit { FileUtils.remove_entry(tempdir) }
  git clone: [
    'git@github.com:Null-Bug-Company/boilerplate-api.git',
    tempdir
  ].map(&:shellescape).join(' ')

  Dir.chdir(tempdir) do
    git checkout: 'main'

    apply 'template.rb'
  end
end

add_template_repository_to_source_path
