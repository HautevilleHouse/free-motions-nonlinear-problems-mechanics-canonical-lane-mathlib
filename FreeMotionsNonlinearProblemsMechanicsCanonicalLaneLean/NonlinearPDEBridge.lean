import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionConfig

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | (O : AdmittedNonlinearMechanicsObject) => O.eulerLagrangeSolution
  | _ => False

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  cases A.object
  case mk config variabilitySpace lagrangianDefined eulerLagrangeSolution conclusion =>
    exact conclusion

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
