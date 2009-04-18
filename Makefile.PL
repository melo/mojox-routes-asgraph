use inc::Module::Install;

name     'MojoX-Routes-AsGraph';
all_from 'lib/MojoX/Routes/AsGraph.pm';
author   'Pedro Melo <melo@cpan.org>';
license  'perl';

build_requires 'Test::More';

auto_install;

WriteAll;

