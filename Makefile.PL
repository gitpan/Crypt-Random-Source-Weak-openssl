#!/usr/bin/perl -w

use strict;

use ExtUtils::MakeMaker;

warn "No OpenSSL executable could be found, consider installing one or this source will not be available for use" unless qx/which openssl/;

WriteMakefile(
	NAME         => 'Crypt::Random::Source::Weak::openssl',
	VERSION_FROM => 'lib/Crypt/Random/Source/Weak/openssl.pm',
	INSTALLDIRS  => 'site',
	SIGN         => 1,
	PL_FILES     => { },
	PREREQ_PM    => {
		'Test::use::ok' => 0,
		'Mouse' => '0.04',
		'Crypt::Random::Source' => '0.02',
		'File::Which' => 0,
		'namespace::clean' => '0.08',
	},
);
