use 5.020;

use strict;
use warnings;
use utf8;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Mojo::SQL',
  VERSION_FROM => 'lib/Mojo/SQL.pm',
  ABSTRACT     => 'Safely generate and compose SQL statements',
  AUTHOR       => 'Sebastian Riedel <sri@cpan.org>',
  LICENSE      => 'mit',
  META_MERGE   => {
    dynamic_config => 0,
    'meta-spec'    => {version   => 2},
    no_index       => {directory => ['examples', 't']},
    prereqs        => {runtime   => {requires => {perl => '5.020'}}},
    resources      => {
      bugtracker => {web => 'https://github.com/mojolicious/perl-sql/issues'},
      homepage   => 'https://mojolicious.org',
      license    => ['http://www.opensource.org/licenses/mit'],
      repository => {
        type => 'git',
        url  => 'https://github.com/mojolicious/perl-sql.git',
        web  => 'https://github.com/mojolicious/perl-sql',
      },
      x_IRC => {url => 'irc://irc.libera.chat/#mojo', web => 'https://web.libera.chat/#mojo'}
    },
  },
  PREREQ_PM => {Mojolicious => '9.41'},
  test      => {TESTS    => 't/*.t'}
);
