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
# This file was generated from the source file fi.xml
# The source file version number was 1.109, generated on
# 2008/06/26 03:47:57.
#
# Do not edit this file directly.
#
###########################################################################

package DateTime::Locale::fi;

use strict;
use warnings;
use utf8;

use base 'DateTime::Locale::root';

sub cldr_version { return "1\.6\.1" }

{
    my $am_pm_abbreviated = [ "ap\.", "ip\." ];
    sub am_pm_abbreviated { return $am_pm_abbreviated }
}
{
    my $date_format_full = "EEEE\ d\.\ MMMM\ yyyy";
    sub date_format_full { return $date_format_full }
}

{
    my $date_format_long = "d\.\ MMMM\ yyyy";
    sub date_format_long { return $date_format_long }
}

{
    my $date_format_medium = "d\.M\.yyyy";
    sub date_format_medium { return $date_format_medium }
}

{
    my $date_format_short = "d\.M\.yyyy";
    sub date_format_short { return $date_format_short }
}

{
    my $datetime_format = "\{1\}\ \{0\}";
    sub datetime_format { return $datetime_format }
}

{
    my $day_format_abbreviated = [ "ma", "ti", "ke", "to", "pe", "la", "su" ];
    sub day_format_abbreviated { return $day_format_abbreviated }
}

sub day_format_narrow { $_[0]->day_stand_alone_narrow() }

{
    my $day_format_wide = [ "maanantaina", "tiistaina", "keskiviikkona", "torstaina", "perjantaina", "lauantaina", "sunnuntaina" ];
    sub day_format_wide { return $day_format_wide }
}

sub day_stand_alone_abbreviated { $_[0]->day_format_abbreviated() }

{
    my $day_stand_alone_narrow = [ "M", "T", "K", "T", "P", "L", "S" ];
    sub day_stand_alone_narrow { return $day_stand_alone_narrow }
}

sub day_stand_alone_wide { $_[0]->day_format_wide() }

{
    my $era_abbreviated = [ "eKr\.", "jKr\." ];
    sub era_abbreviated { return $era_abbreviated }
}

sub era_narrow { $_[0]->era_abbreviated() }

{
    my $era_wide = [ "ennen\ Kristuksen\ syntymää", "jälkeen\ Kristuksen\ syntymän" ];
    sub era_wide { return $era_wide }
}
{
    my $first_day_of_week = 1;
    sub first_day_of_week { return $first_day_of_week }
}

{
    my $month_format_abbreviated = [ "tammi", "helmi", "maalis", "huhti", "touko", "kesä", "heinä", "elo", "syys", "loka", "marras", "joulu" ];
    sub month_format_abbreviated { return $month_format_abbreviated }
}

sub month_format_narrow { $_[0]->month_stand_alone_narrow() }

{
    my $month_format_wide = [ "tammikuuta", "helmikuuta", "maaliskuuta", "huhtikuuta", "toukokuuta", "kesäkuuta", "heinäkuuta", "elokuuta", "syyskuuta", "lokakuuta", "marraskuuta", "joulukuuta" ];
    sub month_format_wide { return $month_format_wide }
}

sub month_stand_alone_abbreviated { $_[0]->month_format_abbreviated() }

{
    my $month_stand_alone_narrow = [ "T", "H", "M", "H", "T", "K", "H", "E", "S", "L", "M", "J" ];
    sub month_stand_alone_narrow { return $month_stand_alone_narrow }
}

sub month_stand_alone_wide { $_[0]->month_format_wide() }

{
    my $quarter_format_abbreviated = [ "1\.\ nelj\.", "2\.\ nelj\.", "3\.\ nelj\.", "4\.\ nelj\." ];
    sub quarter_format_abbreviated { return $quarter_format_abbreviated }
}

sub quarter_format_narrow { $_[0]->quarter_stand_alone_narrow() }

{
    my $quarter_format_wide = [ "1\.\ neljännes", "2\.\ neljännes", "3\.\ neljännes", "4\.\ neljännes" ];
    sub quarter_format_wide { return $quarter_format_wide }
}

sub quarter_stand_alone_abbreviated { $_[0]->quarter_format_abbreviated() }

{
    my $quarter_stand_alone_narrow = [ "1", "2", "3", "4" ];
    sub quarter_stand_alone_narrow { return $quarter_stand_alone_narrow }
}

sub quarter_stand_alone_wide { $_[0]->quarter_format_wide() }

{
    my $time_format_full = "H\.mm\.ss\ v";
    sub time_format_full { return $time_format_full }
}

{
    my $time_format_long = "H\.mm\.ss\ z";
    sub time_format_long { return $time_format_long }
}

{
    my $time_format_medium = "H\.mm\.ss";
    sub time_format_medium { return $time_format_medium }
}

{
    my $time_format_short = "H\.mm";
    sub time_format_short { return $time_format_short }
}

{
    my $_format_for_HHmm = "HH\.mm";
    sub _format_for_HHmm { return $_format_for_HHmm }
}

{
    my $_format_for_HHmmss = "HH\.mm\.ss";
    sub _format_for_HHmmss { return $_format_for_HHmmss }
}

{
    my $_format_for_Hm = "H\.mm";
    sub _format_for_Hm { return $_format_for_Hm }
}

{
    my $_format_for_M = "L";
    sub _format_for_M { return $_format_for_M }
}

{
    my $_format_for_MEd = "E\ d\.M\.";
    sub _format_for_MEd { return $_format_for_MEd }
}

{
    my $_format_for_MMM = "LLL";
    sub _format_for_MMM { return $_format_for_MMM }
}

{
    my $_format_for_MMMEd = "E\ d\.\ MMM";
    sub _format_for_MMMEd { return $_format_for_MMMEd }
}

{
    my $_format_for_MMMMEd = "E\ d\.\ MMMM";
    sub _format_for_MMMMEd { return $_format_for_MMMMEd }
}

{
    my $_format_for_MMMMd = "d\.\ MMMM";
    sub _format_for_MMMMd { return $_format_for_MMMMd }
}

{
    my $_format_for_MMMd = "d\.\ MMM";
    sub _format_for_MMMd { return $_format_for_MMMd }
}

{
    my $_format_for_Md = "d\.M\.";
    sub _format_for_Md { return $_format_for_Md }
}

{
    my $_format_for_d = "d";
    sub _format_for_d { return $_format_for_d }
}

{
    my $_format_for_mmss = "mm\.ss";
    sub _format_for_mmss { return $_format_for_mmss }
}

{
    my $_format_for_ms = "mm\.ss";
    sub _format_for_ms { return $_format_for_ms }
}

{
    my $_format_for_y = "yyyy";
    sub _format_for_y { return $_format_for_y }
}

{
    my $_format_for_yM = "L\.yyyy";
    sub _format_for_yM { return $_format_for_yM }
}

{
    my $_format_for_yMEd = "EEE\ d\.M\.yyyy";
    sub _format_for_yMEd { return $_format_for_yMEd }
}

{
    my $_format_for_yMMM = "LLL\ yyyy";
    sub _format_for_yMMM { return $_format_for_yMMM }
}

{
    my $_format_for_yMMMEd = "EEE\ d\.\ MMM\ yyyy";
    sub _format_for_yMMMEd { return $_format_for_yMMMEd }
}

{
    my $_format_for_yMMMM = "LLLL\ yyyy";
    sub _format_for_yMMMM { return $_format_for_yMMMM }
}

{
    my $_format_for_yQ = "Q\/yyyy";
    sub _format_for_yQ { return $_format_for_yQ }
}

{
    my $_format_for_yQQQ = "QQQ\ yyyy";
    sub _format_for_yQQQ { return $_format_for_yQQQ }
}

{
    my $_format_for_yyMM = "M\/yy";
    sub _format_for_yyMM { return $_format_for_yyMM }
}

{
    my $_format_for_yyMMM = "MMM\ yy";
    sub _format_for_yyMMM { return $_format_for_yyMMM }
}

{
    my $_format_for_yyQ = "Q\/yy";
    sub _format_for_yyQ { return $_format_for_yyQ }
}

{
    my $_format_for_yyyyM = "M\/yyyy";
    sub _format_for_yyyyM { return $_format_for_yyyyM }
}

{
    my $_format_for_yyyyMEEEd = "EEE\ d\.M\.yyyy";
    sub _format_for_yyyyMEEEd { return $_format_for_yyyyMEEEd }
}

{
    my $_format_for_yyyyMMMM = "LLLL\ yyyy";
    sub _format_for_yyyyMMMM { return $_format_for_yyyyMMMM }
}

{
    my $_format_for_yyyyQQQQ = "QQQQ\ yyyy";
    sub _format_for_yyyyQQQQ { return $_format_for_yyyyQQQQ }
}

{
    my $_available_formats =
        {
          "HHmm" => "HH\.mm",
          "HHmmss" => "HH\.mm\.ss",
          "Hm" => "H\.mm",
          "M" => "L",
          "MEd" => "E\ d\.M\.",
          "MMM" => "LLL",
          "MMMEd" => "E\ d\.\ MMM",
          "MMMMEd" => "E\ d\.\ MMMM",
          "MMMMd" => "d\.\ MMMM",
          "MMMd" => "d\.\ MMM",
          "Md" => "d\.M\.",
          "d" => "d",
          "mmss" => "mm\.ss",
          "ms" => "mm\.ss",
          "y" => "yyyy",
          "yM" => "L\.yyyy",
          "yMEd" => "EEE\ d\.M\.yyyy",
          "yMMM" => "LLL\ yyyy",
          "yMMMEd" => "EEE\ d\.\ MMM\ yyyy",
          "yMMMM" => "LLLL\ yyyy",
          "yQ" => "Q\/yyyy",
          "yQQQ" => "QQQ\ yyyy",
          "yyMM" => "M\/yy",
          "yyMMM" => "MMM\ yy",
          "yyQ" => "Q\/yy",
          "yyyyM" => "M\/yyyy",
          "yyyyMEEEd" => "EEE\ d\.M\.yyyy",
          "yyyyMMMM" => "LLLL\ yyyy",
          "yyyyQQQQ" => "QQQQ\ yyyy"
        };
    sub _available_formats { return $_available_formats }
}

1;

__END__


=pod

=encoding utf8

=head1 NAME

DateTime::Locale::fi

=head1 SYNOPSIS

  use DateTime;

  my $dt = DateTime->now( locale => 'fi' );
  print $dt->month_name();

=head1 DESCRIPTION

This is the DateTime locale package for Finnish.

=head1 DATA

This locale inherits from the L<DateTime::Locale::root> locale.

It contains the following data.

=head2 Days

=head3 Wide (format)

  maanantaina
  tiistaina
  keskiviikkona
  torstaina
  perjantaina
  lauantaina
  sunnuntaina

=head3 Abbreviated (format)

  ma
  ti
  ke
  to
  pe
  la
  su

=head3 Narrow (format)

  M
  T
  K
  T
  P
  L
  S

=head3 Wide (stand-alone)

  maanantaina
  tiistaina
  keskiviikkona
  torstaina
  perjantaina
  lauantaina
  sunnuntaina

=head3 Abbreviated (stand-alone)

  ma
  ti
  ke
  to
  pe
  la
  su

=head3 Narrow (stand-alone)

  M
  T
  K
  T
  P
  L
  S

=head2 Months

=head3 Wide (format)

  tammikuuta
  helmikuuta
  maaliskuuta
  huhtikuuta
  toukokuuta
  kesäkuuta
  heinäkuuta
  elokuuta
  syyskuuta
  lokakuuta
  marraskuuta
  joulukuuta

=head3 Abbreviated (format)

  tammi
  helmi
  maalis
  huhti
  touko
  kesä
  heinä
  elo
  syys
  loka
  marras
  joulu

=head3 Narrow (format)

  T
  H
  M
  H
  T
  K
  H
  E
  S
  L
  M
  J

=head3 Wide (stand-alone)

  tammikuuta
  helmikuuta
  maaliskuuta
  huhtikuuta
  toukokuuta
  kesäkuuta
  heinäkuuta
  elokuuta
  syyskuuta
  lokakuuta
  marraskuuta
  joulukuuta

=head3 Abbreviated (stand-alone)

  tammi
  helmi
  maalis
  huhti
  touko
  kesä
  heinä
  elo
  syys
  loka
  marras
  joulu

=head3 Narrow (stand-alone)

  T
  H
  M
  H
  T
  K
  H
  E
  S
  L
  M
  J

=head2 Quarters

=head3 Wide (format)

  1. neljännes
  2. neljännes
  3. neljännes
  4. neljännes

=head3 Abbreviated (format)

  1. nelj.
  2. nelj.
  3. nelj.
  4. nelj.

=head3 Narrow (format)

  1
  2
  3
  4

=head3 Wide (stand-alone)

  1. neljännes
  2. neljännes
  3. neljännes
  4. neljännes

=head3 Abbreviated (stand-alone)

  1. nelj.
  2. nelj.
  3. nelj.
  4. nelj.

=head3 Narrow (stand-alone)

  1
  2
  3
  4

=head2 Eras

=head3 Wide

  ennen Kristuksen syntymää
  jälkeen Kristuksen syntymän

=head3 Abbreviated

  eKr.
  jKr.

=head3 Narrow

  eKr.
  jKr.

=head2 Date Formats

=head3 Full

   2008-02-05T12:30:30 = tiistaina 5. helmikuuta 2008
   1995-12-22T09:05:02 = perjantaina 22. joulukuuta 1995
  -0010-09-15T04:44:23 = lauantaina 15. syyskuuta -010

=head3 Long

   2008-02-05T12:30:30 = 5. helmikuuta 2008
   1995-12-22T09:05:02 = 22. joulukuuta 1995
  -0010-09-15T04:44:23 = 15. syyskuuta -010

=head3 Medium

   2008-02-05T12:30:30 = 5.2.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.9.-010

=head3 Short

   2008-02-05T12:30:30 = 5.2.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.9.-010

=head3 Default

   2008-02-05T12:30:30 = 5.2.2008
   1995-12-22T09:05:02 = 22.12.1995
  -0010-09-15T04:44:23 = 15.9.-010

=head2 Time Formats

=head3 Full

   2008-02-05T12:30:30 = 12.30.30 UTC
   1995-12-22T09:05:02 = 9.05.02 UTC
  -0010-09-15T04:44:23 = 4.44.23 UTC

=head3 Long

   2008-02-05T12:30:30 = 12.30.30 UTC
   1995-12-22T09:05:02 = 9.05.02 UTC
  -0010-09-15T04:44:23 = 4.44.23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 12.30.30
   1995-12-22T09:05:02 = 9.05.02
  -0010-09-15T04:44:23 = 4.44.23

=head3 Short

   2008-02-05T12:30:30 = 12.30
   1995-12-22T09:05:02 = 9.05
  -0010-09-15T04:44:23 = 4.44

=head3 Default

   2008-02-05T12:30:30 = 12.30.30
   1995-12-22T09:05:02 = 9.05.02
  -0010-09-15T04:44:23 = 4.44.23

=head2 Datetime Formats

=head3 Full

   2008-02-05T12:30:30 = tiistaina 5. helmikuuta 2008 12.30.30 UTC
   1995-12-22T09:05:02 = perjantaina 22. joulukuuta 1995 9.05.02 UTC
  -0010-09-15T04:44:23 = lauantaina 15. syyskuuta -010 4.44.23 UTC

=head3 Long

   2008-02-05T12:30:30 = 5. helmikuuta 2008 12.30.30 UTC
   1995-12-22T09:05:02 = 22. joulukuuta 1995 9.05.02 UTC
  -0010-09-15T04:44:23 = 15. syyskuuta -010 4.44.23 UTC

=head3 Medium

   2008-02-05T12:30:30 = 5.2.2008 12.30.30
   1995-12-22T09:05:02 = 22.12.1995 9.05.02
  -0010-09-15T04:44:23 = 15.9.-010 4.44.23

=head3 Short

   2008-02-05T12:30:30 = 5.2.2008 12.30
   1995-12-22T09:05:02 = 22.12.1995 9.05
  -0010-09-15T04:44:23 = 15.9.-010 4.44

=head3 Default

   2008-02-05T12:30:30 = 5.2.2008 12.30.30
   1995-12-22T09:05:02 = 22.12.1995 9.05.02
  -0010-09-15T04:44:23 = 15.9.-010 4.44.23

=head2 Available Formats

=head3 HHmm (HH.mm)

   2008-02-05T12:30:30 = 12.30
   1995-12-22T09:05:02 = 09.05
  -0010-09-15T04:44:23 = 04.44

=head3 HHmmss (HH.mm.ss)

   2008-02-05T12:30:30 = 12.30.30
   1995-12-22T09:05:02 = 09.05.02
  -0010-09-15T04:44:23 = 04.44.23

=head3 Hm (H.mm)

   2008-02-05T12:30:30 = 12.30
   1995-12-22T09:05:02 = 9.05
  -0010-09-15T04:44:23 = 4.44

=head3 M (L)

   2008-02-05T12:30:30 = 2
   1995-12-22T09:05:02 = 12
  -0010-09-15T04:44:23 = 9

=head3 MEd (E d.M.)

   2008-02-05T12:30:30 = ti 5.2.
   1995-12-22T09:05:02 = pe 22.12.
  -0010-09-15T04:44:23 = la 15.9.

=head3 MMM (LLL)

   2008-02-05T12:30:30 = helmi
   1995-12-22T09:05:02 = joulu
  -0010-09-15T04:44:23 = syys

=head3 MMMEd (E d. MMM)

   2008-02-05T12:30:30 = ti 5. helmi
   1995-12-22T09:05:02 = pe 22. joulu
  -0010-09-15T04:44:23 = la 15. syys

=head3 MMMMEd (E d. MMMM)

   2008-02-05T12:30:30 = ti 5. helmikuuta
   1995-12-22T09:05:02 = pe 22. joulukuuta
  -0010-09-15T04:44:23 = la 15. syyskuuta

=head3 MMMMd (d. MMMM)

   2008-02-05T12:30:30 = 5. helmikuuta
   1995-12-22T09:05:02 = 22. joulukuuta
  -0010-09-15T04:44:23 = 15. syyskuuta

=head3 MMMd (d. MMM)

   2008-02-05T12:30:30 = 5. helmi
   1995-12-22T09:05:02 = 22. joulu
  -0010-09-15T04:44:23 = 15. syys

=head3 Md (d.M.)

   2008-02-05T12:30:30 = 5.2.
   1995-12-22T09:05:02 = 22.12.
  -0010-09-15T04:44:23 = 15.9.

=head3 d (d)

   2008-02-05T12:30:30 = 5
   1995-12-22T09:05:02 = 22
  -0010-09-15T04:44:23 = 15

=head3 mmss (mm.ss)

   2008-02-05T12:30:30 = 30.30
   1995-12-22T09:05:02 = 05.02
  -0010-09-15T04:44:23 = 44.23

=head3 ms (mm.ss)

   2008-02-05T12:30:30 = 30.30
   1995-12-22T09:05:02 = 05.02
  -0010-09-15T04:44:23 = 44.23

=head3 y (yyyy)

   2008-02-05T12:30:30 = 2008
   1995-12-22T09:05:02 = 1995
  -0010-09-15T04:44:23 = -010

=head3 yM (L.yyyy)

   2008-02-05T12:30:30 = 2.2008
   1995-12-22T09:05:02 = 12.1995
  -0010-09-15T04:44:23 = 9.-010

=head3 yMEd (EEE d.M.yyyy)

   2008-02-05T12:30:30 = ti 5.2.2008
   1995-12-22T09:05:02 = pe 22.12.1995
  -0010-09-15T04:44:23 = la 15.9.-010

=head3 yMMM (LLL yyyy)

   2008-02-05T12:30:30 = helmi 2008
   1995-12-22T09:05:02 = joulu 1995
  -0010-09-15T04:44:23 = syys -010

=head3 yMMMEd (EEE d. MMM yyyy)

   2008-02-05T12:30:30 = ti 5. helmi 2008
   1995-12-22T09:05:02 = pe 22. joulu 1995
  -0010-09-15T04:44:23 = la 15. syys -010

=head3 yMMMM (LLLL yyyy)

   2008-02-05T12:30:30 = helmikuuta 2008
   1995-12-22T09:05:02 = joulukuuta 1995
  -0010-09-15T04:44:23 = syyskuuta -010

=head3 yQ (Q/yyyy)

   2008-02-05T12:30:30 = 1/2008
   1995-12-22T09:05:02 = 4/1995
  -0010-09-15T04:44:23 = 3/-010

=head3 yQQQ (QQQ yyyy)

   2008-02-05T12:30:30 = 1. nelj. 2008
   1995-12-22T09:05:02 = 4. nelj. 1995
  -0010-09-15T04:44:23 = 3. nelj. -010

=head3 yyMM (M/yy)

   2008-02-05T12:30:30 = 2/8
   1995-12-22T09:05:02 = 12/95
  -0010-09-15T04:44:23 = 9/10

=head3 yyMMM (MMM yy)

   2008-02-05T12:30:30 = helmi 8
   1995-12-22T09:05:02 = joulu 95
  -0010-09-15T04:44:23 = syys 10

=head3 yyQ (Q/yy)

   2008-02-05T12:30:30 = 1/8
   1995-12-22T09:05:02 = 4/95
  -0010-09-15T04:44:23 = 3/10

=head3 yyyyM (M/yyyy)

   2008-02-05T12:30:30 = 2/2008
   1995-12-22T09:05:02 = 12/1995
  -0010-09-15T04:44:23 = 9/-010

=head3 yyyyMEEEd (EEE d.M.yyyy)

   2008-02-05T12:30:30 = ti 5.2.2008
   1995-12-22T09:05:02 = pe 22.12.1995
  -0010-09-15T04:44:23 = la 15.9.-010

=head3 yyyyMMMM (LLLL yyyy)

   2008-02-05T12:30:30 = helmikuuta 2008
   1995-12-22T09:05:02 = joulukuuta 1995
  -0010-09-15T04:44:23 = syyskuuta -010

=head3 yyyyQQQQ (QQQQ yyyy)

   2008-02-05T12:30:30 = 1. neljännes 2008
   1995-12-22T09:05:02 = 4. neljännes 1995
  -0010-09-15T04:44:23 = 3. neljännes -010

=head2 Miscellaneous

=head3 Prefers 24 hour time?

Yes

=head3 Local first day of the week

maanantaina


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