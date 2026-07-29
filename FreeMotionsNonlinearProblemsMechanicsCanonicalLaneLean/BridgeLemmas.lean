import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionAdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FreeMotionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse