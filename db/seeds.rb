
User.create(
  email: 'shes50103@gmail.com', 
    password: 'aaaaaa',

  )

User.create(
  email: 'sheng.zhan@aiesec.net', 
  password: 'aaaaaa',
  )


User.create(
  email: 'ss@ss', 
  password: 'aaaaaa',
  )

10.times {
User.create(
  email: Faker::Internet.free_email, 
  password: 'aaaaaa',
  )
}

