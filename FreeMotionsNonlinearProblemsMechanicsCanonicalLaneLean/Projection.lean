import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def freeMotionProjection : Projection FreeMotionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem free_motion_projection_idempotent (x : FreeMotionEndgameState) :
    freeMotionProjection.toFun (freeMotionProjection.toFun x) = freeMotionProjection.toFun x := by
  exact freeMotionProjection.idempotent x

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse
