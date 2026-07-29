import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure HamiltonianFlowPackage where
  symplecticForm : Type u
  hamiltonianFunction : Type v
  hamiltonianVectorField : Type w
  poissonBracketStructure : Prop
  canonicalEquations : Prop
  symplecticityOfFlow : Prop

structure HamiltonianFlowEvidence (H : HamiltonianFlowPackage) where
  poissonBracketStructureClosed : H.poissonBracketStructure
  canonicalEquationsClosed : H.canonicalEquations
  symplecticityOfFlowClosed : H.symplecticityOfFlow

def HamiltonianFlowClosed (H : HamiltonianFlowPackage) : Prop :=
  H.poissonBracketStructure ∧ H.canonicalEquations ∧ H.symplecticityOfFlow

theorem hamiltonian_flow_closed_from_evidence
    (H : HamiltonianFlowPackage) (Ev : HamiltonianFlowEvidence H) :
    HamiltonianFlowClosed H := by
  exact And.intro Ev.poissonBracketStructureClosed
    (And.intro Ev.canonicalEquationsClosed Ev.symplecticityOfFlowClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse