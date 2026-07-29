import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : FreeMotionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeMotionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
