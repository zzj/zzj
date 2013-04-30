
## http://wiki.summercode.com/how_to_install_scala_on_ubuntu_scala_2_8_1_and_ubuntu_10_04

cd software
wget http://www.scala-lang.org/downloads/distrib/files/scala-2.9.2.tgz
tar zxf scala-2.9.2.tgz
ln -sf `pwd`/scala-2.9.2/bin/scala ~/bin/bin/scala
ln -sf `pwd`/scala-2.9.2/bin/scalac ~/bin/bin/scalac
ln -sf `pwd`/scala-2.9.2/bin/fsc ~/bin/bin/fsc
ln -sf `pwd`/scala-2.9.2/bin/sbaz ~/bin/bin/sbaz
ln -sf `pwd`/scala-2.9.2/bin/sbaz-setup ~/bin/bin/sbaz-setup
ln -sf `pwd`/scala-2.9.2/bin/scaladoc ~/bin/bin/scaladoc
ln -sf `pwd`/scala-2.9.2/bin/scalap ~/bin/bin/scalap

wget http://repo.typesafe.com/typesafe/ivy-releases/org.scala-sbt/sbt-launch//0.12.3/sbt-launch.jar
mv sbt-launch.jar ~/bin/bin/
cp ../sbt ~/bin/bin

