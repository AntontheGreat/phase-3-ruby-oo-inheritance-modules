require_relative './dance_module'
require_relative './meta_dancing_module'
require_relative './fancy_dance'

class Kid
    # Module whose methods to be used in another class as instance methods, then must include the module.
    # Module's methods to be used in another class as class methods, you must extend the module.
    # include Dance
    # extend MetaDancing
    extend FancyDance::ClassMethods
    include FancyDance::InstanceMethods  

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end