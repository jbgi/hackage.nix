{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { hlint = true; build-examples = false; llvm = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "pipes-cacophony"; version = "0.4.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "jgalt@centromere.net";
      author = "John Galt";
      homepage = "https://github.com/centromere/pipes-cacophony";
      url = "";
      synopsis = "Pipes for Noise-secured network connections.";
      description = "A set of pipes to secure network connections with the\n<https://github.com/trevp/noise/blob/master/noise.md Noise> protocol.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cacophony)
          (hsPkgs.memory)
          (hsPkgs.pipes)
          ];
        };
      exes = {
        "loopback" = {
          depends = (pkgs.lib).optionals (flags.build-examples) [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cacophony)
            (hsPkgs.lens)
            (hsPkgs.memory)
            (hsPkgs.pipes)
            (hsPkgs.pipes-cacophony)
            ];
          };
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            ];
          };
        };
      };
    }