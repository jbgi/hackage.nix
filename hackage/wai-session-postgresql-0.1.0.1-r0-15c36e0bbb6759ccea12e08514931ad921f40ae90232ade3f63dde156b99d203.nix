{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-session-postgresql"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Hans-Christian Esperer";
      maintainer = "Hans-Christian Esperer hc@hcesperer.org";
      author = "Hans-Christian Esperer hc@hcesperer.org";
      homepage = "https://github.com/hce/postgresql-session";
      url = "";
      synopsis = "PostgreSQL backed Wai session store";
      description = "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.entropy)
          (hsPkgs.postgresql-simple)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.wai-session)
          ];
        };
      exes = {
        "postgresql-session-exe" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.data-default)
            (hsPkgs.entropy)
            (hsPkgs.http-types)
            (hsPkgs.wai-session-postgresql)
            (hsPkgs.postgresql-simple)
            (hsPkgs.text)
            (hsPkgs.vault)
            (hsPkgs.wai)
            (hsPkgs.wai-session)
            (hsPkgs.warp)
            ];
          };
        };
      tests = {
        "postgresql-session-test" = {
          depends = [ (hsPkgs.base) (hsPkgs.postgresql-session) ];
          };
        };
      };
    }