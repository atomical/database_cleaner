require 'database_cleaner/generic/base'
require 'active_fedora'

module DatabaseCleaner
   module ActiveFedora
     module Base
       def self.included(base)
         base.extend(ClassMethods)
       end

       def db
        # AF takes care of determing the test environment database
       end

       module ClassMethods
         def available_strategies
           %W[:deletion]
         end
       end
       
     end
   end
end


