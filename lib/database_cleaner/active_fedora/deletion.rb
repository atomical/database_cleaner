require 'active_fedora/base'
require 'database_cleaner/active_fedora/base'

module DatabaseCleaner::ActiveFedora
  class Deletion
    def start
    end

    def clean
      ActiveFedora::Base.destroy_all
    end
  end
end


