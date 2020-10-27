User.all.destroy_all
Job.all.destroy_all

ray = User.create(username: "ray", password: "1234", first_name: "Rachael", last_name: "Ghorbani", email:"rachael.ghorbani@gmail.com")
val = User.create(username: "vldt", password: "1234", first_name: "Valdet", last_name: "Bajraktari", email: "vldt@v.com")
blade = User.create(username: "bigboiblade", password: "1234", first_name: "Blade", last_name: "Bajraktari-Mire", email: "blade@ll.com")

j1 = Job.create(start_time: "Tue Oct 27 2020 10:25:50 GMT-0400 (Eastern Daylight Time)", client_id: blade.id, freelancer_id: val.id, hours: 10, dayrate_or_hourly: "dayrate", lat: 42.4538168, long: -71.2337149, location: "74 Bedford St, Lexington, MA 02420", rate: 600, total_amount: 600, completed: true)


