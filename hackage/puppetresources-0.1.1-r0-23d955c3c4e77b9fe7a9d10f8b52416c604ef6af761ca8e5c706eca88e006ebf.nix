{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "puppetresources"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "simon@banquise.net";
      author = "Simon Marechal";
      homepage = "http://lpuppet.banquise.net";
      url = "";
      synopsis = "A program that displays the puppet resources associated to a node given .pp files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "puppetresources" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.language-puppet)
            (hsPkgs.hsfacter)
            (hsPkgs.containers)
            (hsPkgs.hslogger)
            (hsPkgs.Diff)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }