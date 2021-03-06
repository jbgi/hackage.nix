{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "opaleye-trans"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Bitnomial, Inc";
      maintainer = "wraithm@gmail.com, opensource@bitnomial.com";
      author = "Matthew Wraith";
      homepage = "https://github.com/bitnomial/opaleye-trans";
      url = "";
      synopsis = "A monad transformer for Opaleye";
      description = "A monad transformer for Opaleye with exceptions";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.opaleye)
          (hsPkgs.postgresql-simple)
          (hsPkgs.product-profunctors)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          ];
        };
      exes = {
        "opaleye-rosetree" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.opaleye)
            (hsPkgs.opaleye-trans)
            (hsPkgs.postgresql-simple)
            (hsPkgs.product-profunctors)
            ];
          };
        "opaleye-rosetree2" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.opaleye)
            (hsPkgs.opaleye-trans)
            (hsPkgs.postgresql-simple)
            (hsPkgs.product-profunctors)
            ];
          };
        };
      };
    }