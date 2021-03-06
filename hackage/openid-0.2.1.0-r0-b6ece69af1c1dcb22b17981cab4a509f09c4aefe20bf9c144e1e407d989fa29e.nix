{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { examples = false; split-base = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "openid"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008. Trevor Elliott <trevor@geekgateway.com>";
      maintainer = "trevor@geekgateway.com";
      author = "Trevor Elliott";
      homepage = "http://github.com/elliottt/hsopenid";
      url = "";
      synopsis = "An implementation of the OpenID-2.0 spec.";
      description = "An implementation of the OpenID-2.0 spec.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.HTTP)
          (hsPkgs.monadLib)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.time)
          (hsPkgs.xml)
          (hsPkgs.HsOpenSSL)
          ];
        };
      exes = {
        "openid-test" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs.base)
            (hsPkgs.monadLib)
            (hsPkgs.network)
            (hsPkgs.HsOpenSSL)
            (hsPkgs.openid)
            ];
          };
        };
      };
    }