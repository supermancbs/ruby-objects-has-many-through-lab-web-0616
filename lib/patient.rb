class Patient 
  attr_accessor :name


  def initialize(name)
    @name = name 
    @appointments = []
  end 

  def appointments
    @appointments
  end 

  def add_appointment(apppointment)
    @appointments << apppointment
    apppointment.patient = self
  end 

  def doctors 
    self.appointments.collect do |apppointment|
      apppointment.doctor
    end 

  end 

end 


