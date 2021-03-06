{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "curl-runnings"; version = "0.2.0"; };
      license = "MIT";
      copyright = "2018 Avi Press";
      maintainer = "mail@avi.press";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/curl-runnings#readme";
      url = "";
      synopsis = "A framework for declaratively writing curl based API tests";
      description = "Please see the README on Github at <https://github.com/aviaviavi/curl-runnings#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.hspec)
          (hsPkgs.hspec-expectations)
          (hsPkgs.http-conduit)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          ];
        };
      exes = {
        "curl-runnings" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.curl-runnings)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "curl-runnings-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.curl-runnings)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            ];
          };
        };
      };
    }