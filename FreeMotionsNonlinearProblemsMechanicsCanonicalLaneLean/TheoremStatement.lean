import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "FreeMotionsNonlinearProblemsMechanics",
    theoremName := "FreeMotionsNonlinearProblemsMechanics",
    theoremObject := "Analysis of free motions in nonlinear problems of mechanics",
    classicalBoundary := "Classical boundary remains open: unrestricted classical closure is not claimed (theoremBoundaryOpen=true, sourceConjectureClosureClaimed=false)",
    manifoldConstrainedStatement := "Bridge and gate closed for admissible class objects; endpoint classification satisfied or remainder recorded.",
    certificateLane := "manifold_constrained",
    carriedRemainder := "Classical source boundary carried by formalizationCertificate.theoremBoundaryOpen"
  }

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse