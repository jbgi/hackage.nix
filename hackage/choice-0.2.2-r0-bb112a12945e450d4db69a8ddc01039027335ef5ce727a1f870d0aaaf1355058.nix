{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "choice"; version = "0.2.2"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "m@tweag.io";
      author = "Mathieu Boespflug";
      homepage = "https://github.com/mboes/choice#readme";
      url = "";
      synopsis = "A solution to boolean blindness.";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }