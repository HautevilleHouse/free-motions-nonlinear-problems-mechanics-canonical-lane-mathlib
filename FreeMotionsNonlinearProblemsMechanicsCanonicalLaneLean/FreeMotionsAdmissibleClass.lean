import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure FreeMotionAdmittedObject where
  configSpace : Type u
  potentialField : configSpace → ℝ
  kineticMetric : configSpace → Type v
  admissibleTrajectory : Prop
  endpointReached : Prop
  remainderRecorded : Prop
  gateWitness : endpointReached ∨ remainderRecorded

structure AdmissibleClass where
  object : FreeMotionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeMotionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def FreeMotionWitnessClosed (O : FreeMotionAdmittedObject) : Prop :=
  O.endpointReached

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse