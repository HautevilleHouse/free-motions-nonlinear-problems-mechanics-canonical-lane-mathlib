import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionsBridgeLemmas

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

def gateClosed (A : FreeMotionsAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FreeMotionsAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse