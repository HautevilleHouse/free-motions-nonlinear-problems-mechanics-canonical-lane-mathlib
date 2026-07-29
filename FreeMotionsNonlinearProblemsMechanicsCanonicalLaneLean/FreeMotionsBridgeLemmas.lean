import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

def bridgeClosed (A : FreeMotionsAdmissibleClass) : Prop :=
  FreeMotionWitnessClosed A.object

theorem bridge_from_admissible_class (A : FreeMotionsAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse