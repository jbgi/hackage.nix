{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "postgresql-libpq"; version = "0.8.2.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Grant Monroe\n(c) 2011 Leon P Smith";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Grant Monroe, Leon P Smith, Joey Adams";
      homepage = "http://github.com/lpsmith/postgresql-libpq";
      url = "";
      synopsis = "low-level binding to libpq";
      description = "This is a binding to libpq: the C application\nprogrammer's interface to PostgreSQL. libpq is a\nset of library functions that allow client\nprograms to pass queries to the PostgreSQL\nbackend server and to receive the results of\nthese queries.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) ];
        libs = [ (pkgs."pq") ] ++ (pkgs.lib).optionals (system.isOpenbsd) [
          (pkgs."crypto")
          (pkgs."ssl")
          (pkgs."com_err")
          (pkgs."asn1")
          (pkgs."krb5")
          (pkgs."wind")
          (pkgs."roken")
          (pkgs."heimbase")
          ];
        build-tools = [ ((hsPkgs.buildPackages).hsc2hs) ];
        };
      };
    }