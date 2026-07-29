import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionsAdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure NonlinearPDEPackage where
  domain : Type u
  target : Type v
  differentialOperator : Type w
  boundaryConditions : Prop
  existenceWeakSolution : Prop
  uniqueness : Prop

structure NonlinearPDEEvidence (P : NonlinearPDEPackage) where
  boundaryConditionsClosed : P.boundaryConditions
  existenceWeakSolutionClosed : P.existenceWeakSolution
  uniquenessClosed : P.uniqueness

def NonlinearPDEClosed (P : NonlinearPDEPackage) : Prop :=
  P.boundaryConditions ∧ P.existenceWeakSolution ∧ P.uniqueness

theorem nonlinear_pde_closed_from_evidence (P : NonlinearPDEPackage) (E : NonlinearPDEEvidence P) :
    NonlinearPDEClosed P := by
  exact And.intro E.boundaryConditionsClosed
    (And.intro E.existenceWeakSolutionClosed E.uniquenessClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse