{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "log-warper"; version = "1.8.3"; };
      license = "MIT";
      copyright = "2016-2017 Serokell";
      maintainer = "Serokell <hi@serokell.io>";
      author = "@serokell";
      homepage = "https://github.com/serokell/log-warper";
      url = "";
      synopsis = "Flexible, configurable, monadic and pretty logging";
      description = "This package implements nice and featureful wrapper around hslogger library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.ansi-terminal)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fmt)
          (hsPkgs.microlens-platform)
          (hsPkgs.monad-control)
          (hsPkgs.monad-loops)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.universum)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
        };
      exes = {
        "play-log" = {
          depends = [ (hsPkgs.log-warper) (hsPkgs.universum) (hsPkgs.yaml) ];
          };
        "how-to" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.log-warper)
            (hsPkgs.markdown-unlit)
            (hsPkgs.text)
            ];
          };
        "pure-how-to" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.log-warper)
            (hsPkgs.markdown-unlit)
            (hsPkgs.mtl)
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
            (hsPkgs.microlens-mtl)
            (hsPkgs.log-warper)
            (hsPkgs.QuickCheck)
            (hsPkgs.universum)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }