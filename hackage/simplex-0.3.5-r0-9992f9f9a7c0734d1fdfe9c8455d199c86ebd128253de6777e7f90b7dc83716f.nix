{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "simplex"; version = "0.3.5"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://github.com/scravy/simplex";
      url = "";
      synopsis = "A simple markup language that translates to LaTeX";
      description = "A simple markup language that translates to LaTeX\n\nSee the PDF included in the cabal tarball to see\nhow Simplex works.\n\n[@v0.3.4@]\nRemoved dependency on the deprecated @old-time@ package,\nusing @time@ instead now.\n\n[@v0.3.5@]\nEnhanced the documentation, added the simplex source of\nit in doc (see the source tarball).";
      buildType = "Simple";
      };
    components = {
      exes = {
        "simplex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.split)
            (hsPkgs.regex-compat)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.random)
            ];
          };
        };
      };
    }