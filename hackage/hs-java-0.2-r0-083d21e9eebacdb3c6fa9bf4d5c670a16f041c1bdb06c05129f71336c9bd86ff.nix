{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hs-java"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya V. Portnov";
      homepage = "";
      url = "";
      synopsis = "Java .class files assembler/disassembler";
      description = "This package declares data types for Java .class files format and functions\nto assemble/disassemble Java bytecode. See dump-class.hs, rebuild-class.hs,\nTestGen.hs for examples of usage.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.utf8-string)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.binary-state)
          (hsPkgs.control-monad-exception)
          ];
        };
      };
    }