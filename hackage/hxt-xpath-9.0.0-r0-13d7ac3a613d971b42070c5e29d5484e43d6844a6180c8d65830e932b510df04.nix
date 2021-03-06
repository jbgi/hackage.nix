{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hxt-xpath"; version = "9.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) 2005-2010 Torben Kuseler, Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Torben Kuseler";
      homepage = "http://www.fh-wedel.de/~si/HXmlToolbox/index.html";
      url = "";
      synopsis = "The XPath modules for HXT.";
      description = "The Haskell XML Toolbox XPath library.\nSince version 8.5 this library is packed in a separate package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.parsec)
          (hsPkgs.hxt)
          ];
        };
      };
    }