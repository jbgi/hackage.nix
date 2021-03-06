{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dev = false; templatehaskell = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "avro"; version = "0.4.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Raga <alexey.raga@gmail.com>";
      author = "Thomas M. DuBuisson";
      homepage = "https://github.com/haskell-works/avro#readme";
      url = "";
      synopsis = "Avro serialization support for Haskell";
      description = "Avro serialization and deserialization support for Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bifunctors)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.fail)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.pure-zlib)
          (hsPkgs.scientific)
          (hsPkgs.semigroups)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.tf-random)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (pkgs.lib).optional (flags.templatehaskell) (hsPkgs.template-haskell);
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.array)
            (hsPkgs.avro)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bifunctors)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.extra)
            (hsPkgs.fail)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.mtl)
            (hsPkgs.pure-zlib)
            (hsPkgs.scientific)
            (hsPkgs.semigroups)
            (hsPkgs.tagged)
            (hsPkgs.text)
            (hsPkgs.tf-random)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ] ++ (pkgs.lib).optional (flags.templatehaskell) (hsPkgs.template-haskell);
          };
        };
      };
    }