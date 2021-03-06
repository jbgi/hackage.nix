{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "haxr"; version = "3000.0.1"; };
      license = "BSD-4-Clause";
      copyright = "Bjorn Bringert, 2003-2006";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://www.haskell.org/haxr/";
      url = "";
      synopsis = "XML-RPC client and server library.";
      description = "HaXR is a library for writing XML-RPC\nclient and server applications in Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.HaXml)
          (hsPkgs.HTTP)
          ] ++ (if flags.split-base
          then [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.old-time)
            (hsPkgs.old-locale)
            ]
          else [ (hsPkgs.base) ]);
        };
      };
    }