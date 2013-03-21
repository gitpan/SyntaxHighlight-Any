
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Common interface for syntax highlighting and detecting language in code",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "SyntaxHighlight-Any",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "SyntaxHighlight::Any",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "File::Slurp" => 0,
    "File::Which" => 0,
    "IPC::Run" => 0,
    "Log::Any" => 0,
    "Log::Any::App" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [
    "bin/highlight-string"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
