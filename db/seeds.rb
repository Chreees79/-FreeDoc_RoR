# CREATION OF PATIENTS --------------------------------
=begin 
100.times do |patient|
  Patient.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end
=end

# CREATION OF DOCTORS -----------------------------------
=begin 
100.times do |doctor|
  Doctor.create(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    specialty: ["cardiologue", "dentiste", "généraliste", "gynecologue", "neurologue", "ophtalmologue", "pédiatre", "psychiatre", "stomatologue"].sample,
    zip_code: Faker::Address.zip_code)
end
=end

# CREATION OF APPOINTMENTS --------------------------------
=begin 
200.times do |appointment|
  Appointment.create(
    doctor: Doctor.all.sample,
    patient: Patient.all.sample,
    date: Faker::Date.forward(days: 30))
end
=end

# TESTS -----------------------------------------------
=begin
patient_list = Patient.all
patient_list.size
=> 100 

p1 = Patient.find(3)
p1.first_name
=> "Micheal" 

d1 = Doctor.find(43)
d1.patients
=> #<ActiveRecord::Associations::CollectionProxy [#<Patient id: 97, first_name: "Carl", last_name: "Lebsack", created_at: "2022-07-28 08:36:19", updated_at: "2022-07-28 08:36:19">, #<Patient id: 35, first_name: "Eddie", last_name: "Fay", created_at: "2022-07-28 08:36:19", updated_at: "2022-07-28 08:36:19">]> 
d1.appointments
  => #<ActiveRecord::Associations::CollectionProxy [#<Appointment id: 127, doctor_id: 43, patient_id: 97, date: "2022-08-10 00:00:00", created_at: "2022-07-28 09:05:33", updated_at: "2022-07-28 09:05:33">, #<Appointment id: 155, doctor_id: 43, patient_id: 35, date: "2022-08-08 00:00:00", created_at: "2022-07-28 09:05:34", updated_at: "2022-07-28 09:05:34">]> 

  p1 = Patient.find(66)
p1.doctors
    => #<ActiveRecord::Associations::CollectionProxy [#<Doctor id: 59, first_name: "Adan", last_name: "Adams", specialty: "généraliste", created_at: "2022-07-28 08:39:54", updated_at: "2022-07-28 08:39:54">]>
    p1.appointments
=> #<ActiveRecord::Associations::CollectionProxy [#<Appointment id: 188, doctor_id: 59, patient_id: 66, date: "2022-08-23 00:00:00", created_at: "2022-07-28 09:05:34", updated_at: "2022-07-28 09:05:34">]>

p1.doctors.first.appointments
  => #<ActiveRecord::Associations::CollectionProxy [#<Appointment id: 31, doctor_id: 59, patient_id: 16, date: "2022-08-16 00:00:00", created_at: "2022-07-28 09:05:32", updated_at: "2022-07-28 09:05:32">, #<Appointment id: 188, doctor_id: 59, patient_id: 66, date: "2022-08-23 00:00:00", created_at: "2022-07-28 09:05:34", updated_at: "2022-07-28 09:05:34">]> 

p1 = Patient.create(first_name: "Pea", last_name: "Nuts"
)
p1.first_name
=> "Pea" 

d1 = Doctor.create(first_name: "Hannibal", last_name: "L
ecter", specialty: "psychiatre")

d1.specialty
=> "psychiatre"   
=end

# CREATION OF CITIES --------------------------------------
=begin 
50.times do |cities|
  City.create(name: Faker::Address.city)
end
=end

# CREATION OF SPECIALITIES -------------------------------
=begin 
array = ["cardiologue", "dentiste", "généraliste", "gynecologue", "neurologue", "ophtalmologue", "pédiatre", "psychiatre", "stomatologue"]
(1..9).each do |i|
i = Specialty.create(name: array[i-1])
end
=end

# CREATION OF DOCTOR ID AND SPECIALTY ID ---------------------------
=begin 
(1..100).each do |i|
  JoinTableDoctorSpecialty.create(doctor_id: rand(1..100), specialty_id: rand(1..9))
end
=end

# UDPATE CITIES ID FOR DOCTOR, PATIENTS AND APPOINTMENTS -----------
=begin 
(1..100).each do |i|
  i = Doctor.find(i)
  i.update(city: City.all.sample)
end
(1..100).each do |i|
  i = Patient.find(i)
  i.update(city: City.all.sample)
end
(1..200).each do |i|
  i = Appointment.find(i)
  i.update(city: City.all.sample)
end
=end