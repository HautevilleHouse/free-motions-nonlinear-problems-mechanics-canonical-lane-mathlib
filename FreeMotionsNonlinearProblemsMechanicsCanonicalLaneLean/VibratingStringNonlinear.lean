import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.LagrangianSystem

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure VibratingString (A : AdmissibleClass) where
  stringLength : ℝ
  displacement : ℝ → ℝ → ℝ
  waveSpeed : ℝ
  nonlinearStiffness : ℝ
  pdeEquation : Prop
  boundaryConditions : Prop
  initialConditions : Prop
  pdeEquationClosed : pdeEquation
  boundaryConditionsClosed : boundaryConditions
  initialConditionsClosed : initialConditions

structure VibratingStringEvidence {A : AdmissibleClass} (S : VibratingString A) where
  pdeEquationClosed : S.pdeEquation
  boundaryConditionsClosed : S.boundaryConditions
  initialConditionsClosed : S.initialConditions

def VibratingStringClosed {A : AdmissibleClass} (S : VibratingString A) : Prop :=
  S.pdeEquation ∧ S.boundaryConditions ∧ S.initialConditions

theorem vibrating_string_closed_from_evidence
    {A : AdmissibleClass} (S : VibratingString A)
    (E : VibratingStringEvidence S) : VibratingStringClosed S := by
  exact And.intro E.pdeEquationClosed
    (And.intro E.boundaryConditionsClosed E.initialConditionsClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse