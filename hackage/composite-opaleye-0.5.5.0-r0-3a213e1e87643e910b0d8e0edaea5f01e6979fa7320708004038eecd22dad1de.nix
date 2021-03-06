{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "composite-opaleye"; version = "0.5.5.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.health";
      author = "Confer Health, Inc.";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "Opaleye SQL for Frames records";
      description = "Integration between Frames records and Opaleye SQL, allowing records to be stored, retrieved, and queried from PostgreSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.composite-base)
          (hsPkgs.lens)
          (hsPkgs.opaleye)
          (hsPkgs.postgresql-simple)
          (hsPkgs.product-profunctors)
          (hsPkgs.profunctors)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vinyl)
          ];
        };
      tests = {
        "composite-opaleye-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.composite-base)
            (hsPkgs.composite-opaleye)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.opaleye)
            (hsPkgs.postgresql-simple)
            (hsPkgs.product-profunctors)
            (hsPkgs.profunctors)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            ];
          };
        };
      };
    }