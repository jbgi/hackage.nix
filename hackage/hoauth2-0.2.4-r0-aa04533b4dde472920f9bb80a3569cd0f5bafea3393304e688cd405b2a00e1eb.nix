{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hoauth2"; version = "0.2.4"; };
      license = "BSD-3-Clause";
      copyright = "Haisheng,Wu";
      maintainer = "freizl@gmail.com";
      author = "Haisheng Wu";
      homepage = "freizl.github.com";
      url = "";
      synopsis = "hoauth2";
      description = "Haskell OAuth2 authentication.\n\nTested following services\n\n* google web oauth: <https://developers.google.com/accounts/docs/OAuth2WebServer>\n\n* weibo oauth2: <http://open.weibo.com/wiki/Oauth2>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-show)
          (hsPkgs.conduit)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.random)
          ];
        };
      };
    }