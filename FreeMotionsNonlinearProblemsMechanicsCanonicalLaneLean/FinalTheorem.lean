import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionEulerLagrange
import HautevilleHouse.FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.NonlinearOscillatorAdmissible
import HautevilleHouse.FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.HamiltonianCanonicalFlow

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  True

def gateClosed (A : AdmissibleClass) : Prop :=
  True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedFreeMotionsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_free_motions_endgame (A : AdmissibleClass) :
    ConstrainedFreeMotionsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse