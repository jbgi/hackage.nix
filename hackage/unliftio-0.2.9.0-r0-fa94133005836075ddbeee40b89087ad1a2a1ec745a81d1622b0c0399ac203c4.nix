{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "unliftio"; version = "0.2.9.0"; };
      license = "MIT";
      copyright = "2017 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman, Francesco Mazzoli";
      homepage = "https://github.com/fpco/unliftio/tree/master/unliftio#readme";
      url = "";
      synopsis = "The MonadUnliftIO typeclass for unlifting monads to IO (batteries included)";
      description = "Please see the documentation and README at <https://www.stackage.org/package/unliftio>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.stm)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unliftio-core)
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix)) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).le "7.10") (hsPkgs.nats);
        };
      tests = {
        "unliftio-spec" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      benchmarks = {
        "conc-bench" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.gauge)
            (hsPkgs.process)
            (hsPkgs.stm)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unliftio)
            (hsPkgs.unliftio-core)
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs.unix);
          };
        };
      };
    }