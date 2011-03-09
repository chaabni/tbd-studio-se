###########################################################################
#
# This file is auto-generated by the Perl DateTime Suite locale
# generator (0.05).  This code generator comes with the
# DateTime::Locale distribution in the tools/ directory, and is called
# generate-from-cldr.
#
# This file as generated from the CLDR XML locale data.  See the
# LICENSE.cldr file included in this distribution for license details.
#
# This file was generated from the source file uz_Latn_UZ.xml
# The source file version number was 1.19, generated on
# 2008/05/28 15:49:37.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::uz_Latn_UZ;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::uz_Latn';

sub cldr_version { return "1\.6\.1" }

{
    my $first_day_of_week = 7;
    sub first_day_of_week { return $first_day_of_week }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::uz_Latn_UZ

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'uz_Latn_UZ' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Uzbek Latin Uzbekistan.

=head1 DATA

This locale inherits from the L<DateTime::Locale::uz_Latn> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  dushanba
  seshanba
  chorshanba
  payshanba
  juma
  shanba
  yakshanba

=head3 Abbreviated (format)

  Dush
  Sesh
  Chor
  Pay
  Jum
  Shan
  Yaksh

=head3 Narrow (format)

  D
  S
  C
  P
  J
  S
  Y

=head3 Wide (stand-alone)

  dushanba
  seshanba
  chorshanba
  payshanba
  juma
  shanba
  yakshanba

=head3 Abbreviated (stand-alone)

  Dush
  Sesh
  Chor
  Pay
  Jum
  Shan
  Yaksh

=head3 Narrow (stand-alone)

  D
  S
  C
  P
  J
  S
  Y

=head2 Months

=head3 Wide (format)

  Muharram
  Safar
  Rabiul-avval
  Rabiul-oxir
  Jumodiul-ulo
  Jumodiul-uxro
  Rajab
  Shaʿbon
  Ramazon
  Shavvol
  Zil-qaʿda
  Zil-hijja

=head3 Abbreviated (format)

  Yanv
  Fev
  Mar
  Apr
  May
  Iyun
  Iyul
  Avg
  Sen
  Okt
  Noya
  Dek

=head3 Narrow (format)

  Y
  F
  M
  A
  M
  I
  I
  A
  S
  O
  N
  D

=head3 Wide (stand-alone)

  Muharram
  Safar
  Rabiul-avval
  Rabiul-oxir
  Jumodiul-ulo
  Jumodiul-uxro
  Rajab
  Shaʿbon
  Ramazon
  Shavvol
  Zil-qaʿda
  Zil-hijja

=head3 Abbreviated (stand-alone)

  Yanv
  Fev
  Mar
  Apr
  May
  Iyun
  Iyul
  Avg
  Sen
  Okt
  Noya
  Dek

=head3 Narrow (stand-alone)

  Y
  F
  M
  A
  M
  I
  I
  A
  S
  O
  N
  D

=head2 Quarters

=head3 Wide (format)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (format)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Abbreviated (stand-alone)

  Q1
  Q2
  Q3
  Q4

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  BCE
  CE

=head3 Abbreviated

  BCE
  CE

=head3 Narrow

  BCE
  CE

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = seshanba, 2008 Safar 05
   1995-12-22T09:05:02 = juma, 1995 Zil-hijja 22
  -0010-09-15T04:44:23 = shanba, -010 Ramazon 15

=head3 Long

   2008-02-05T12:30:30 = 2008 Safar 5
   1995-12-22T09:05:02 = 1995 Zil-hijja 22
  -0010-09-15T04:44:23 = -010 Ramazon 15

=head3 Medium

   2008-02-05T12:30:30 = 2008 Fev 5
   1995-12-22T09:05:02 = 1995 Dek 22
  -0010-09-15T04:44:23 = -010 Sen 15

=head3 Short

   2008-02-05T12:30:30 = 8/02/05
   1995-12-22T09:05:02 = 95/12/22
  -0010-09-15T04:44:23 = 10/09/15

=head3 Default

   2008-02-05T12:30:30 = 2008 Fev 5
   1995-12-22T09:05:02 = 1995 Dek 22
  -0010-09-15T04:44:23 = -010 Sen 15

=head2 Time Formats

=head3 Full

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 12:30:30 UTC
   1995-12-22T09:05:02 = 09:05:02 UTC
  -0010-09-15T04:44:23 = 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 09:05
  -0010-09-15T04:44:23 = 04:44

=head3 Default

   2008-02-05T12:30:30 = 12:30:30
   1995-12-22T09:05:02 = 09:05:02
  -0010-09-15T04:44:23 = 04:44:23

=head2 Datetime Formats

=head3 Full

   2008-02-05T12:30:30 = seshanba, 2008 Safar 05 12:30:30 UTC
   1995-12-22T09:05:02 = juma, 1995 Zil-hijja 22 09:05:02 UTC
  -0010-09-15T04:44:23 = shanba, -010 Ramazon 15 04:44:23 UTC

=head3 Long

   2008-02-05T12:30:30 = 2008 Safar 5 12:30:30 UTC
   1995-12-22T09:05:02 = 1995 Zil-hijja 22 09:05:02 UTC
  -0010-09-15T04:44:23 = -010 Ramazon 15 04:44:23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 2008 Fev 5 12:30:30
   1995-12-22T09:05:02 = 1995 Dek 22 09:05:02
  -0010-09-15T04:44:23 = -010 Sen 15 04:44:23

=head3 Short

   2008-02-05T12:30:30 = 8/02/05 12:30
   1995-12-22T09:05:02 = 95/12/22 09:05
  -0010-09-15T04:44:23 = 10/09/15 04:44

=head3 Default

   2008-02-05T12:30:30 = 2008 Fev 5 12:30:30
   1995-12-22T09:05:02 = 1995 Dek 22 09:05:02
  -0010-09-15T04:44:23 = -010 Sen 15 04:44:23

=head2 Available Formats

=head3 Hm (H:mm)

   2008-02-05T12:30:30 = 12:30
   1995-12-22T09:05:02 = 9:05
  -0010-09-15T04:44:23 = 4:44

=head3 M (L)

   2008-02-05T12:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E, M-d)

   2008-02-05T12:30:30 = Sesh, 2-5
   1995-12-22T09:05:02 = Jum, 12-22
  -0010-09-15T04:44:23 = Shan, 9-15

=head3 MMM (LLL)

   2008-02-05T12:30:30 = Fev
   1995-12-22T09:05:02 = Dek
  -0010-09-15T04:44:23 = Sen

=head3 MMMEd (E MMM d)

   2008-02-05T12:30:30 = Sesh Fev 5
   1995-12-22T09:05:02 = Jum Dek 22
  -0010-09-15T04:44:23 = Shan Sen 15

=head3 MMMMEd (E MMMM d)

   2008-02-05T12:30:30 = Sesh Safar 5
   1995-12-22T09:05:02 = Jum Zil-hijja 22
  -0010-09-15T04:44:23 = Shan Ramazon 15

=head3 MMMMd (MMMM d)

   2008-02-05T12:30:30 = Safar 5
   1995-12-22T09:05:02 = Zil-hijja 22
  -0010-09-15T04:44:23 = Ramazon 15

=head3 MMMd (MMM d)

   2008-02-05T12:30:30 = Fev 5
   1995-12-22T09:05:02 = Dek 22
  -0010-09-15T04:44:23 = Sen 15

=head3 Md (M-d)

   2008-02-05T12:30:30 = 2-5
   1995-12-22T09:05:02 = 12-22
  -0010-09-15T04:44:23 = 9-15

=head3 d (d)

   2008-02-05T12:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 ms (mm:ss)

   2008-02-05T12:30:30 = 30:30
   1995-12-22T09:05:02 = 05:02
  -0010-09-15T04:44:23 = 44:23

=head3 y (yyyy)

   2008-02-05T12:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -010

=head3 yM (yyyy-M)

   2008-02-05T12:30:30 = 2008-2
   1995-12-22T09:05:02 = 1995-12
  -0010-09-15T04:44:23 = -010-9

=head3 yMEd (EEE, yyyy-M-d)

   2008-02-05T12:30:30 = Sesh, 2008-2-5
   1995-12-22T09:05:02 = Jum, 1995-12-22
  -0010-09-15T04:44:23 = Shan, -010-9-15

=head3 yMMM (yyyy MMM)

   2008-02-05T12:30:30 = 2008 Fev
   1995-12-22T09:05:02 = 1995 Dek
  -0010-09-15T04:44:23 = -010 Sen

=head3 yMMMEd (EEE, yyyy MMM d)

   2008-02-05T12:30:30 = Sesh, 2008 Fev 5
   1995-12-22T09:05:02 = Jum, 1995 Dek 22
  -0010-09-15T04:44:23 = Shan, -010 Sen 15

=head3 yMMMM (yyyy MMMM)

   2008-02-05T12:30:30 = 2008 Safar
   1995-12-22T09:05:02 = 1995 Zil-hijja
  -0010-09-15T04:44:23 = -010 Ramazon

=head3 yQ (yyyy Q)

   2008-02-05T12:30:30 = 2008 1
   1995-12-22T09:05:02 = 1995 4
  -0010-09-15T04:44:23 = -010 3

=head3 yQQQ (yyyy QQQ)

   2008-02-05T12:30:30 = 2008 Q1
   1995-12-22T09:05:02 = 1995 Q4
  -0010-09-15T04:44:23 = -010 Q3

=head3 yyQ (Q yy)

   2008-02-05T12:30:30 = 1 8
   1995-12-22T09:05:02 = 4 95
  -0010-09-15T04:44:23 = 3 10

=head3 yyyyM (yyyy/M)

   2008-02-05T12:30:30 = 2008/2
   1995-12-22T09:05:02 = 1995/12
  -0010-09-15T04:44:23 = -010/9

=head3 yyyyMMMM (MMMM yyyy)

   2008-02-05T12:30:30 = Safar 2008
   1995-12-22T09:05:02 = Zil-hijja 1995
  -0010-09-15T04:44:23 = Ramazon -010

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

yakshanba


=head1 SUPPORT

See L<DateTime::Locale>.

=head1 AUTHOR

Dave Rolsky <autarch@urth.org>

=head1 COPYRIGHT

Copyright (c) 2008 David Rolsky. All rights reserved. This program is
free software; you can redistribute it and/or modify it under the same
terms as Perl itself.

This module was generated from data provided by the CLDR project, see
the LICENSE.cldr in this distribution for details on the CLDR data's
license.

=cut