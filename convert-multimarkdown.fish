#!/usr/bin/env fish

# by Jakukyo Friel <weakish@gmail.com> (http://weakish.github.io)
# under Apache-2.0


# Remove copyright, title, and other header.

for i in *.md
	sed -i -r '1,14d' $i
end


# Combine into one.

cat index.md \                                                                                              ➜  /m/w/p/m/ruby-users-guide (pandoc) ✗ 
  getstarted.md \
  examples.md strings.md \
  regexp.md \
  arrays.md \
  backtoexamples.md \
  control.md iterators.md \
  oothinking.md \
  methods.md \
  classes.md \
  inheritance.md \
  redefinemethods.md \
  accesscontrol.md \
  singletonmethods.md \
  modules.md \
  procobjects.md \
  variables.md \
  globalvars.md \
  instancevars.md \
  localvars.md \
  constants.md \
  rescue.md \
  ensure.md \
  accessors.md \
  objinitialization.md \
  misc.md \
  about.md > ruby-user-guide.mmd

rm index.md \                                                                                              ➜  /m/w/p/m/ruby-users-guide (pandoc) ✗ 
  getstarted.md \
  examples.md strings.md \
  regexp.md \
  arrays.md \
  backtoexamples.md \
  control.md iterators.md \
  oothinking.md \
  methods.md \
  classes.md \
  inheritance.md \
  redefinemethods.md \
  accesscontrol.md \
  singletonmethods.md \
  modules.md \
  procobjects.md \
  variables.md \
  globalvars.md \
  instancevars.md \
  localvars.md \
  constants.md \
  rescue.md \
  ensure.md \
  accessors.md \
  objinitialization.md \
  misc.md \
  about.md

# convert to pandoc

pandoc -s -f markdown_mmd -t markdown -o ruby-users-guide.md ruby-user-guide.mmd 