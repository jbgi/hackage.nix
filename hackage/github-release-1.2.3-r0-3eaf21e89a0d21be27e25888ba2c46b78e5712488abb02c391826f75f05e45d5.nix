{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "github-release"; version = "1.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Taylor Fausak";
      author = "";
      homepage = "https://github.com/tfausak/github-release#readme";
      url = "";
      synopsis = "Upload files to GitHub releases.";
      description = "GitHub Release uploads files to GitHub releases.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.mime-types)
          (hsPkgs.optparse-generic)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.uri-templater)
          ];
        };
      exes = {
        "github-release" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.github-release)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-types)
            (hsPkgs.mime-types)
            (hsPkgs.optparse-generic)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.uri-templater)
            ];
          };
        };
      };
    }