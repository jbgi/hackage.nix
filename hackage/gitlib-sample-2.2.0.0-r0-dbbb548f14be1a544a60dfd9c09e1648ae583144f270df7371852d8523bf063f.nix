{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gitlib-sample"; version = "2.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "johnw@fpcomplete.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "Sample backend for gitlib showing the basic structure for any backend.";
      description = "Sample backend for @gitlib@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.gitlib) (hsPkgs.transformers) ];
        };
      };
    }