{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gingersnap"; version = "0.1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tom@tinybop.com";
      author = "Tinybop Labs, tom-bop";
      homepage = "https://github.com/Tinybop/gingersnap";
      url = "";
      synopsis = "snap-core + aeson + postgresql-simple = delicious";
      description = "JSON API idioms for snap-core, preventing DB connection leaks";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.postgresql-simple)
          (hsPkgs.resource-pool)
          (hsPkgs.snap-core)
          ];
        };
      };
    }