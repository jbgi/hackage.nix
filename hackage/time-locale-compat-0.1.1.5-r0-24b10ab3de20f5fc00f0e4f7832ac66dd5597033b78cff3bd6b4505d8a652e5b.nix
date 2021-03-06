{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "time-locale-compat"; version = "0.1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2014-2018 Kei Hibino";
      maintainer = "ex8k.hibino@gmail.com";
      author = "Kei Hibino";
      homepage = "https://github.com/khibino/haskell-time-locale-compat";
      url = "";
      synopsis = "Compatibile module for time-format locale";
      description = "This package contains wrapped name module for time-format locale between old-locale and time-1.5.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ] ++ (if flags.old-locale
          then [ (hsPkgs.old-locale) (hsPkgs.time) ]
          else [ (hsPkgs.time) ]);
        };
      };
    }