{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "groundhog-postgresql"; version = "0.3.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Boris Lykah <lykahb@gmail.com>";
      author = "Boris Lykah <lykahb@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "PostgreSQL backend for the groundhog library.";
      description = "This package uses postgresql-simple and postgresql-libpq.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.postgresql-simple)
          (hsPkgs.postgresql-libpq)
          (hsPkgs.bytestring)
          (hsPkgs.blaze-builder)
          (hsPkgs.transformers)
          (hsPkgs.groundhog)
          (hsPkgs.monad-control)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.attoparsec)
          (hsPkgs.resource-pool)
          (hsPkgs.time)
          ];
        };
      };
    }