import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionConfig

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure LagrangianNonlinearAnalysisPackage (C : FreeMotionConfig) where
  lagrangianDensity : C.carrier → C.metric → ℝ
  nonlinearTerm : Prop
  eulerLagrangeOperator : Prop
  weakSolutionSpace : Prop

structure LagrangianNonlinearAnalysisEvidence {C : FreeMotionConfig}
    (L : LagrangianNonlinearAnalysisPackage C) where
  nonlinearTermClosed : L.nonlinearTerm
  eulerLagrangeOperatorClosed : L.eulerLagrangeOperator
  weakSolutionSpaceClosed : L.weakSolutionSpace

def LagrangianNonlinearAnalysisClosed {C : FreeMotionConfig}
    (L : LagrangianNonlinearAnalysisPackage C) : Prop :=
  L.nonlinearTerm ∧ L.eulerLagrangeOperator ∧ L.weakSolutionSpace

theorem lagrangian_nonlinear_analysis_closed_from_evidence
    {C : FreeMotionConfig} (L : LagrangianNonlinearAnalysisPackage C)
    (E : LagrangianNonlinearAnalysisEvidence L) : LagrangianNonlinearAnalysisClosed L := by
  exact And.intro E.nonlinearTermClosed
    (And.intro E.eulerLagrangeOperatorClosed E.weakSolutionSpaceClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
