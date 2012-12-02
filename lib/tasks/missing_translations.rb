require 'hash_keys_dumper'

namespace :missing_translations do
  desc 'Shows I18n translation keys which are missing (according to view parsing)'
  task :show => :environment do
    keys = Dir.glob('app/**/*.haml').map do |view|
      file    = File.basename(view).gsub /^_?(.+?)\..+$/, '\1'
      dir     = view.split('/')[-2]
      context = "#{dir}.#{file}"

      File.readlines(view).map do |line|
        line.scan(/\s+t\s*\(?['"]([^#+]+?)['"]/i).map do |m|
          arg = m[0]
          if arg != '.'
            arg[0] == '.' ? "en.#{context}#{arg}" : "en.#{arg}"
          end
        end
      end
    end
    used_keys = keys.compact.flatten.compact.uniq

    # puts used_keys

    keys = Dir.glob('config/locales/*.yml').map { |locale| HashKeysDumper.dump YAML.load(File.read(locale)) }
    available_keys = keys.flatten

    missing_keys = (used_keys - available_keys)

    if missing_keys.any?
      puts 'Missing translations'
      puts missing_keys
    else
      puts 'You have no missing translations'
    end
  end
end
