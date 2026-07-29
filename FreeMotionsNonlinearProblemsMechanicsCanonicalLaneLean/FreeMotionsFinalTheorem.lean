import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionsBridgeLemmas

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

def ConstrainedFreeMotionsClosure (A : FreeMotionsAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_motions_endgame (A : FreeMotionsAdmissibleClass) :
    ConstrainedFreeMotionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse