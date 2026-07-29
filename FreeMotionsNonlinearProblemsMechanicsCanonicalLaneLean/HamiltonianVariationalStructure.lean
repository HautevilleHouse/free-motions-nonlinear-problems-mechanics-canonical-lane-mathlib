import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.LagrangianNonlinearAnalysis

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure HamiltonianVariationalStructurePackage {C : FreeMotionConfig}
    (L : LagrangianNonlinearAnalysisPackage C) where
  legendreTransformDefined : Prop
  hamiltonianFunctional : C.carrier → C.metric → ℝ
  canonicalEquations : Prop
  symplecticFormPreserved : Prop

structure HamiltonianVariationalStructureEvidence {C : FreeMotionConfig}
    {L : LagrangianNonlinearAnalysisPackage C}
    (H : HamiltonianVariationalStructurePackage L) where
  legendreTransformDefinedClosed : H.legendreTransformDefined
  canonicalEquationsClosed : H.canonicalEquations
  symplecticFormPreservedClosed : H.symplecticFormPreserved

def HamiltonianVariationalStructureClosed {C : FreeMotionConfig}
    {L : LagrangianNonlinearAnalysisPackage C}
    (H : HamiltonianVariationalStructurePackage L) : Prop :=
  H.legendreTransformDefined ∧ H.canonicalEquations ∧ H.symplecticFormPreserved

theorem hamiltonian_variational_structure_closed_from_evidence
    {C : FreeMotionConfig} {L : LagrangianNonlinearAnalysisPackage C}
    (H : HamiltonianVariationalStructurePackage L)
    (E : HamiltonianVariationalStructureEvidence H) : HamiltonianVariationalStructureClosed H := by
  exact And.intro E.legendreTransformDefinedClosed
    (And.intro E.canonicalEquationsClosed E.symplecticFormPreservedClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
