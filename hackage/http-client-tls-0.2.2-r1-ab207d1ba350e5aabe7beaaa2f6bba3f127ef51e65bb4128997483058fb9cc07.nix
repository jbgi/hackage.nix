{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http-client-tls"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/http-client";
      url = "";
      synopsis = "http-client backend using the connection package and tls library";
      description = "Intended for use by higher-level libraries, such as http-conduit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
          (hsPkgs.http-client)
          (hsPkgs.connection)
          (hsPkgs.network)
          (hsPkgs.tls)
          (hsPkgs.bytestring)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            ];
          };
        };
      };
    }