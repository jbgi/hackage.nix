{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "htaglib"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov@opmbx.org>";
      author = "Mark Karpov <markkarpov@opmbx.org>";
      homepage = "https://github.com/mrkkrp/htaglib";
      url = "";
      synopsis = "Bindings to TagLib, audio meta-data library";
      description = "Bindings to TagLib, audio meta-data library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.text) ];
        libs = [ (pkgs."tag_c") ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.htaglib)
            ];
          };
        };
      };
    }