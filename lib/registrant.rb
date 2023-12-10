class Registrant
    attr_reader :name,
                :age,
                :permit,
                :license_data
    
    def initialize(name,age,permit=false)
        @name = name
        @age = age
        @permit = permit
        @license_data = {written: false, license: false, renewed: false}
    end

    def permit?
        @permit == true
    end

    def earn_permit
        @permit = true
    end

    def pass_written_test
        @license_data[:written] = true
    end

    def pass_road_test
        @license_data[:license] = true
        earn_permit
    end

    def renew_license
        @license_data[:renewed] = true
    end
end
