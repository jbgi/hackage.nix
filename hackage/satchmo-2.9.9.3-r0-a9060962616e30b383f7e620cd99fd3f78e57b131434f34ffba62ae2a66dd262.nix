{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "satchmo"; version = "2.9.9.3"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Johannes Waldmann";
      author = "Pepe Iborra, Johannes Waldmann, Alexander Bau";
      homepage = "https://github.com/jwaldmann/satchmo";
      url = "";
      synopsis = "SAT encoding monad";
      description = "Encoding for boolean and integral constraints into CNF-SAT.\nThe encoder is provided as a State monad\n(hence the \"mo\" in \"satchmo\").";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.mtl)
          (hsPkgs.process)
          (hsPkgs.containers)
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.minisat)
          (hsPkgs.async)
          (hsPkgs.memoize)
          (hsPkgs.hashable)
          (hsPkgs.transformers)
          (hsPkgs.lens)
          (hsPkgs.deepseq)
          ];
        };
      tests = {
        "PP" = { depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.satchmo) ]; };
        "Ramsey" = {
          depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.satchmo) ];
          };
        "Spaceship" = {
          depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.satchmo) ];
          };
        "Oscillator" = {
          depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.satchmo) ];
          };
        "Moore" = {
          depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.satchmo) ];
          };
        "Sudoku" = {
          depends = [ (hsPkgs.base) (hsPkgs.array) (hsPkgs.satchmo) ];
          };
        };
      };
    }