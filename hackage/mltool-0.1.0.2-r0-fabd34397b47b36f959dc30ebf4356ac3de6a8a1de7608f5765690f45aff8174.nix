{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mltool"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2016-2017 Alexander Ignatyev";
      maintainer = "ignatyev.alexander@gmail.com";
      author = "Alexander Ignatyev";
      homepage = "https://github.com/alexander-ignatyev/mltool";
      url = "";
      synopsis = "Machine Learning Toolbox";
      description = "Haskell Machine Learning Toolkit\nincludes various methods of supervised learning:\nlinear regression, logistic regression, SVN, neural networks, etc.\nas well as some methods of unsupervised methods: K-Means and PCA.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.hmatrix)
          (hsPkgs.hmatrix-gsl)
          (hsPkgs.hmatrix-gsl-stats)
          (hsPkgs.ascii-progress)
          (hsPkgs.deepseq)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
          ];
        };
      tests = {
        "mltool-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mltool)
            (hsPkgs.vector)
            (hsPkgs.hmatrix)
            (hsPkgs.hmatrix-gsl-stats)
            (hsPkgs.random)
            (hsPkgs.MonadRandom)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }