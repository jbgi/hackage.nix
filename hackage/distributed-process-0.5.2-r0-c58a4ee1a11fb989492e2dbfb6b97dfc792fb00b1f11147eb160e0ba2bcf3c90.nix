{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { th = true; prof = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "distributed-process"; version = "0.5.2"; };
      license = "BSD-3-Clause";
      copyright = "Well-Typed LLP";
      maintainer = "watson.timothy@gmail.com, edsko@well-typed.com, duncan@well-typed.com";
      author = "Duncan Coutts, Nicolas Wu, Edsko de Vries";
      homepage = "http://haskell-distributed.github.com/";
      url = "";
      synopsis = "Cloud Haskell: Erlang-style concurrency in Haskell";
      description = "This is an implementation of Cloud Haskell, as described in\n/Towards Haskell in the Cloud/ by Jeff Epstein, Andrew Black,\nand Simon Peyton Jones\n(<http://research.microsoft.com/en-us/um/people/simonpj/papers/parallel/>),\nalthough some of the details are different. The precise message\npassing semantics are based on /A unified semantics for future Erlang/\nby Hans Svensson, Lars-&#xc5;ke Fredlund and Clara Benac Earle.\nYou will probably also want to install a Cloud Haskell backend such\nas distributed-process-simplelocalnet.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.hashable)
          (hsPkgs.network-transport)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.data-accessor)
          (hsPkgs.bytestring)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.ghc-prim)
          (hsPkgs.distributed-static)
          (hsPkgs.rank1dynamic)
          (hsPkgs.syb)
          ] ++ [
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          ]) ++ (pkgs.lib).optional (flags.th) (hsPkgs.template-haskell);
        };
      benchmarks = {
        "distributed-process-throughput" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            ];
          };
        "distributed-process-latency" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            ];
          };
        "distributed-process-channels" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            ];
          };
        "distributed-process-spawns" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            ];
          };
        "distributed-process-ring" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.distributed-process)
            (hsPkgs.network-transport-tcp)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            ];
          };
        };
      };
    }