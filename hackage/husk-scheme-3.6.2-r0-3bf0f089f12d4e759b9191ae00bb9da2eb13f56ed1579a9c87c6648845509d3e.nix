{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { useffi = true; useptrs = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "husk-scheme"; version = "3.6.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "http://justinethier.github.com/husk-scheme";
      url = "";
      synopsis = "R5RS Scheme interpreter, compiler, and library.";
      description = "<<https://github.com/justinethier/husk-scheme/raw/master/docs/husk-scheme.png>>\n\nA dialect of R5RS Scheme written in Haskell. Advanced\nfeatures are provided including:\n\n* First-class continuations of unlimited extent\n\n* Hygienic macros based on syntax-rules\n\n* Low-level explicit renaming macros\n\n* A foreign function interface (FFI) to Haskell\n\n* Full numeric tower providing support for real, rational, and complex numbers\n\n* Proper tail recursion and lexical scoping\n\n* Read-Eval-Print-Loop (REPL) interpreter, with input driven by Haskeline to provide a rich user experience\n\n* Standard library of Scheme functions, and support for many popular SRFI's\n\nHusk may be used as either a stand-alone interpreter or as an extension language within a larger Haskell application. By closely following the R5RS standard, the intent is to develop a Scheme that is as compatible as possible with other R5RS Schemes. Husk is mature enough for use in production applications, however it is not optimized for performance-critical applications.\n\nScheme is one of two main dialects of Lisp. Scheme follows a minimalist design philosophy: the core language consists of a small number of fundamental forms which may be used to implement other built-in forms. Scheme is an excellent language for writing small, elegant programs, and may also be used to write scripts or embed scripting functionality within a larger application.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.haskeline)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.directory)
          ] ++ (pkgs.lib).optionals (flags.useffi) [
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          ];
        };
      exes = {
        "huski" = {
          depends = [
            (hsPkgs.husk-scheme)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            ] ++ (pkgs.lib).optionals (flags.useffi) [
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            ];
          };
        "huskc" = {
          depends = [
            (hsPkgs.husk-scheme)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.directory)
            (hsPkgs.ghc-paths)
            (hsPkgs.process)
            (hsPkgs.filepath)
            ] ++ (pkgs.lib).optionals (flags.useffi) [
            (hsPkgs.ghc)
            (hsPkgs.ghc-paths)
            ];
          };
        };
      };
    }