require 'active_fedora/base'
require 'database_cleaner/active_fedora/base'

module DatabaseCleaner::ActiveFedora
  class Deletion
    def start
    end

    def clean
      ActiveFedora::Base.connection_for_pid(0).search(nil) { |o| o.delete }
      ActiveFedora.solr.conn.delete_by_query '*:*'
      ActiveFedora.solr.conn.commit
    end
  end
end


