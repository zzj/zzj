cd software
git clone git@github.com:twitter/scalding.git -b branch/0.9.0
cd scalding
sbt update
sbt test     # runs the tests; if you do 'sbt assembly' below, these tests, which are long, are repeated
sbt assembly # creates a fat jar with all dependencies, which is useful when using the scald.rb script
