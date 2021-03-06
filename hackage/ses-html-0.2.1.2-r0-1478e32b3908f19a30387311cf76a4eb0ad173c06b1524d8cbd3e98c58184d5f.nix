{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ses-html"; version = "0.2.1.2"; };
      license = "BSD-3-Clause";
      copyright = "David Johnson";
      maintainer = "djohnson.m@gmail.com";
      author = "David Johnson";
      homepage = "";
      url = "";
      synopsis = "Send HTML formatted emails using Amazon's SES REST API with blaze";
      description = "Send html emails using Amazon's Simple Email Service and Blaze Templating in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.HsOpenSSL)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-html)
          (hsPkgs.byteable)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.http-streams)
          (hsPkgs.tagsoup)
          (hsPkgs.time)
          ];
        };
      };
    }