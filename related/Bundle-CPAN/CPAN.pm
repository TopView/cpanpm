package Bundle::CPAN;
use strict;
use vars qw($VERSION);
$VERSION = '1.854'; # use 3 digits to minimize confusion with the
                    # other CPAN.pm

1;

__END__

=head1 NAME

Bundle::CPAN - Bundle to optimize the behaviour of CPAN.pm

=head1 SYNOPSIS

 perl -MCPAN -e 'install Bundle::CPAN'

=head1 CONTENTS

Module::Build

File::Spec -- prereq

File::Temp -- prepreq

Scalar::Util -- prereq

Test::Harness -- prereq

Test::More -- prereq

Data::Dumper

Digest::SHA

File::HomeDir

Compress::Zlib

Archive::Tar

Archive::Zip

Net::Cmd -- not sure if we need this for Net::FTP

Net::FTP

Term::ReadKey

Term::ReadLine::Perl -- could be replaced by "readline" some time after 1.88

YAML -- user may have a preference for YAML::Syck but as a bundle we don't know

Text::Glob

CPAN

File::Which

=head1 DESCRIPTION

This bundle includes CPAN.pm as the base module.

When CPAN installs this bundle it tries immediately to enable
Term::ReadLine so that you do not need to restart your CPAN session.

In this bundle Term::ReadLine::Perl is preferred over
Term::ReadLine::Gnu because there is no way to express I<OR> in
dependencies.

Note that all modules in this Bundle are not strict prerequisites to
get a working CPAN.pm. CPAN.pm can work quite well without the other
modules (except for Net::FTP which is really highly recommended). The
other modules are B<suggested> and can safely be installed later or
not at all.

Two modules have been omitted due to missing support on Windows
although I consider them indispensable: Module::Signature and Expect.
Please install the Bundle::CPANxxl to get those.

=head1 AUTHOR

Andreas Koenig
