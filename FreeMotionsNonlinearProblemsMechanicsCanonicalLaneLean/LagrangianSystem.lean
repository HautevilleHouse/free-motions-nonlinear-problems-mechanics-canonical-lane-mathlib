import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionsAdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure LagrangianSystem (A : AdmissibleClass) where
  kineticEnergy : A.object.configSpace → ℝ
  potentialEnergy : A.object.configSpace → ℝ
  actionFunctional : (ℝ → A.object.configSpace) → ℝ
  eulerLagrangeEquations : Prop
  admissibleVariationsClosed : Prop
  eulerLagrangeEquationsClosed : eulerLagrangeEquations
  admissibleVariationsClosedTerm : admissibleVariationsClosed

structure LagrangianSystemEvidence {A : AdmissibleClass} (L : LagrangianSystem A) where
  eulerLagrangeEquationsClosed : L.eulerLagrangeEquations
  admissibleVariationsClosedTerm : L.admissibleVariationsClosed

def LagrangianSystemClosed {A : AdmissibleClass} (L : LagrangianSystem A) : Prop :=
  L.eulerLagrangeEquations ∧ L.admissibleVariationsClosed

theorem lagrangian_system_closed_from_evidence
    {A : AdmissibleClass} (L : LagrangianSystem A)
    (E : LagrangianSystemEvidence L) : LagrangianSystemClosed L := by
  exact And.intro E.eulerLagrangeEquationsClosed E.admissibleVariationsClosedTerm

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse