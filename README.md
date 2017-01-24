**NAME**

MojoX::Routes::AsGraph - Create a graph from a MojoX::Routes object

**Synopsis**

~~~ perl
use MojoX::Routes::AsGraph;
use My::Mojolicious::App;
 
my $app   = My::Mojolicious::App->new;
my $graph = MojoX::Routes::AsGraph->graph($app->routes);
 
### $graph is a Graph::Easy object, generate a .dot file
if (open(my $dot, '>', 'routes.dot')) {
  print $dot $graph->as_graphviz;
  close($dot);
}
 
### or directly as a PNG file
if (open(my $png, '|-', 'dot -Tpng -o routes.png')) {
  print $png $graph->as_graphviz;
  close($png);
}
~~~

**METHODS**

~~~ perl
$graph = graph($routes)
~~~ 

Accepts a MojoX::Routes object and generates an Graph::Easy object with a representation of the routes tree.

**BUGS**

Please report any bugs or feature requests to bug-mojox-routes-asgraph at rt.cpan.org, or through the web interface at [CPANTS](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=MojoX-Routes-AsGraph). 
I will be notified, and then you'll automatically be notified of progress on your bug as I make changes.

**SUPPORT**

You can find documentation for this module with the perldoc command.

~~~ perl

perldoc MojoX::Routes::AsGraph
~~~ 

You can also look for information at:

* RT: CPAN's request tracker

    http://rt.cpan.org/NoAuth/Bugs.html?Dist=MojoX-Routes-AsGraph

* AnnoCPAN: Annotated CPAN documentation

    http://annocpan.org/dist/MojoX-Routes-AsGraph

* CPAN Ratings

    http://cpanratings.perl.org/d/MojoX-Routes-AsGraph

* Search CPAN

    http://search.cpan.org/dist/MojoX-Routes-AsGraph/

* IRC

    Use the #mojo channel at FreeNode.

**COPYRIGHT / LICENSE**

Copyright 2009 Pedro Melo.

This program is free software; you can redistribute it and/or modify it under the same terms as Perl itself.