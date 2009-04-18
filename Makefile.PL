use inc::Module::Install;

name     'MojoX-Routes-AsGraph';
all_from 'lib/MojoX/Routes/AsGraph.pm';
repository 'http://github.com/melo/mojox-routes-asgraph/';

requires 'Graph::Easy' => 0;
build_requires 'Test::More';

auto_install;

WriteAll;

