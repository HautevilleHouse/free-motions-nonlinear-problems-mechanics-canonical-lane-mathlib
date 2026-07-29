import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure FreeMotionAdmittedObject where
  configurationSpace : Type u
  potentialEnergy : Type v
  kineticEnergy : Type w
  lagrangian : Prop
  eulerLagrangeEquations : Prop
  conclusion : Prop

inductive FreeMotionEndgameState where
  | initial
  | solved (obj : FreeMotionAdmittedObject)

structure FreeMotionWitnessClosed (O : FreeMotionAdmittedObject) : Prop where
  equationsSatisfied : O.eulerLagrangeEquations
  lagrangianValid : O.lagrangian

structure AdmissibleClass where
  object : FreeMotionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FreeMotionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse