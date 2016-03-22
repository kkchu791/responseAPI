users = User.create!([{email: "user_one@example.com", password: "secret"}])
responses = Response.create!([{reply:"It is certain"},
  {reply:"It is decidedly so"},
  {reply:"Without a doubt"},
  {reply:"Yes, definitely"},
  {reply:"You may rely on it"},
  {reply:"As I see it, yes"},
  {reply:"Most likely"},
  {reply:"Outlook good"},
  {reply:"Yes"},
  {reply:"All Signs point to yes!"},
  {reply:"Reply hazy try again"},
  {reply:"Ask again later"},
  {reply:"Better not tell you now"},
  {reply:"Cannot predict now"},
  {reply:"Concentrate and ask again"},
  {reply:"Don't count on it"},
  {reply:"My reply is no"},
  {reply:"My sources say no"},
  {reply:"Outlook not so good"},
  {reply:"Very doubtful"}
  ])

