use ExtUtils::MakeMaker;


WriteMakefile(
    'NAME'		=> 'Symbol::Callable',
    'VERSION_FROM'	=> 'Callable.pm', 
    'PREREQ_PM'		=> {}, 
    ($] >= 5.005 ?    
      (ABSTRACT_FROM => 'Callable.pm', 
       AUTHOR     => 'xern <xern@cpan.org>') : ()),
);
