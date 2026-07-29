import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.LagrangianSystem

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure NonlinearElasticBody (A : AdmissibleClass) where
  referenceConfig : A.object.configSpace
  deformationMap : referenceConfig → A.object.configSpace
  strainEnergyDensity : A.object.configSpace → ℝ
  equilibriumEquations : Prop
  boundaryConditions : Prop
  hyperelasticConstitutiveLaw : Prop
  equilibriumEquationsClosed : equilibriumEquations
  boundaryConditionsClosed : boundaryConditions
  hyperelasticConstitutiveLawClosed : hyperelasticConstitutiveLaw

structure NonlinearElasticityEvidence {A : AdmissibleClass}
    (B : NonlinearElasticBody A) where
  equilibriumEquationsClosed : B.equilibriumEquations
  boundaryConditionsClosed : B.boundaryConditions
  hyperelasticConstitutiveLawClosed : B.hyperelasticConstitutiveLaw

def NonlinearElasticityClosed {A : AdmissibleClass}
    (B : NonlinearElasticBody A) : Prop :=
  B.equilibriumEquations ∧ B.boundaryConditions ∧ B.hyperelasticConstitutiveLaw

theorem nonlinear_elasticity_closed_from_evidence
    {A : AdmissibleClass} (B : NonlinearElasticBody A)
    (E : NonlinearElasticityEvidence B) : NonlinearElasticityClosed B := by
  exact And.intro E.equilibriumEquationsClosed
    (And.intro E.boundaryConditionsClosed E.hyperelasticConstitutiveLawClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse