{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "geniplate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Lennart Augustsson";
      author = "Lennart Augustsson";
      homepage = "";
      url = "";
      synopsis = "Use template Haskell to generate Uniplate-like functions.";
      description = "Use template Haskell to generate Uniplate-like functions.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.template-haskell) (hsPkgs.mtl) ];
        };
      };
    }