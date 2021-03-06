{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { network-uri = true; developer = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "webdriver"; version = "0.8.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kallisti.dev@gmail.com";
      author = "Adam Curtis";
      homepage = "https://github.com/kallisti-dev/hs-webdriver";
      url = "";
      synopsis = "a Haskell client for the Selenium WebDriver protocol";
      description = "A Selenium WebDriver client for Haskell.\nYou can use it to automate browser sessions\nfor testing, system administration, etc.\n\nFor more information about Selenium itself, see\n<http://seleniumhq.org/>\n\nTo find out what's been changed in this version and others,\nsee the change log at\n<https://github.com/kallisti-dev/hs-webdriver/blob/master/CHANGELOG.md>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.base64-bytestring)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
          (hsPkgs.transformers-base)
          (hsPkgs.lifted-base)
          (hsPkgs.zip-archive)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.directory-tree)
          (hsPkgs.temporary)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.exceptions)
          (hsPkgs.scientific)
          (hsPkgs.data-default-class)
          ] ++ [ (hsPkgs.network-uri) (hsPkgs.network) ];
        };
      };
    }