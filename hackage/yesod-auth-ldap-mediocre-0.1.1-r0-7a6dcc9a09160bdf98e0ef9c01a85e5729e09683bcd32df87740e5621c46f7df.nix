{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yesod-auth-ldap-mediocre"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "amartin@layer3com.com";
      author = "Andrew Martin";
      homepage = "";
      url = "";
      synopsis = "Very simlple LDAP auth for yesod";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-auth)
          (hsPkgs.yesod-form)
          (hsPkgs.text)
          (hsPkgs.LDAP)
          (hsPkgs.aeson)
          (hsPkgs.base)
          ];
        };
      };
    }