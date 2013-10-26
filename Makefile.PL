use 5.006;
use strict;
use warnings FATAL => 'all';
use inc::Module::Install 0.77;
use Module::Install::AutoManifest;
use Module::Install::ReadmeFromPod;

requires 'Module::Install::RTx' => '0.30';
use Module::Install::RTx;

RTx ('RT-Extension-PushoverNotify');
requires_rt('4.0.7');
name 'RT-Extension-PushoverNotify';

all_from      'lib/RT/Extension/PushoverNotify.pm';
requires      'Carp'            => 0;
requires      'List::MoreUtils' => 0;
requires      'LWP::UserAgent'  => 0;
requires      'LWP::Protocol::https' => 0;
test_requires 'Test::More'      => '0.47';

readme_from 'lib/RT/Extension/PushoverNotify.pm';

auto_manifest;

homepage 'https://github.com/2ndquadrant/module-rt-extension-PushoverNotify-perl';
repository 'git://github.com/2ndquadrant/module-rt-extension-PushoverNotify-perl.git';

WriteAll;
