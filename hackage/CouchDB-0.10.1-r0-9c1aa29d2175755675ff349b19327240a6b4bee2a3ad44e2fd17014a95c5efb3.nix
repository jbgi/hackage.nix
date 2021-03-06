{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.4";
      identifier = { name = "CouchDB"; version = "0.10.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2008-2009 Arjun Guha and Brendan Hickey";
      maintainer = "Arjun Guha <arjun@cs.brown.edu>";
      author = "Arjun Guha, Brendan Hickey";
      homepage = "http://github.com/arjunguha/haskell-couchdb/";
      url = "";
      synopsis = "CouchDB interface";
      description = "";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.HTTP)
          (hsPkgs.json)
          ];
        };
      };
    }