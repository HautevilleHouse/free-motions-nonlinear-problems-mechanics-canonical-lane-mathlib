import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure FreeMotionConfig where
  carrier : Type
  topology : TopologicalSpace carrier
  metric : Type
  freeMotionSpace : Prop
  nonlinearConstraint : Prop
  mechanicalActionFunctional : Type
  admissiblePathSet : Prop

structure AdmittedNonlinearMechanicsObject where
  config : FreeMotionConfig
  variabilitySpace : Prop
  lagrangianDefined : Prop
  eulerLagrangeSolution : Prop
  conclusion : eulerLagrangeSolution

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
