{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { patakdebugskovorodabardaq = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "log-warper"; version = "1.0.0"; };
      license = "MIT";
      copyright = "2016-2016 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "Serokell";
      homepage = "https://github.com/serokell/log-warper";
      url = "";
      synopsis = "Flexible, configurable, monadic and pretty logging";
      description = "This package contains nice wrapper around hslogger library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.errors)
          (hsPkgs.exceptions)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.formatting)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.safecopy)
          (hsPkgs.text)
          (hsPkgs.text-format)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.universum)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      exes = {
        "play-log" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.log-warper)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "log-test" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.data-default)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.lens)
            (hsPkgs.log-warper)
            (hsPkgs.QuickCheck)
            (hsPkgs.universum)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }