# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Question.create(
  title: "RegEx match open tags except XHTML self-contained tags",
  content: "I need to match all of these opening tags: <p> <a href='foo'> But not these: <br /> <hr class='foo' /> I came up with this and wanted to make sure I've got it right."
  )

Question.create(
  title: "How can I prevent SQL-injection in PHP?",
  content: "If user input is inserted without modification into an SQL query, then the application becomes vulnerable to SQL injection, like in the following example:"
  )

Answer.create!(
  content: "You can't parse [X]HTML with regex. Because HTML can't be parsed by regex. Regex is not a tool that can be used to correctly parse HTML. As I have answered in HTML-and-regex questions here so many times before, the use of regex will not allow you to consume HTML. Regular expressions are a tool that is insufficiently sophisticated to understand the constructs employed by HTML."
  )

Answer.create!(
  content: "Use prepared statements and parameterized queries. These are SQL statements that are sent to and parsed by the database server separately from any parameters. This way it is impossible for an attacker to inject malicious SQL."
  )

Question.all.first.answers << Answer.all.first
Question.all.last.answers << Answer.all.last


