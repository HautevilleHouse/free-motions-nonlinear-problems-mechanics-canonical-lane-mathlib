import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionsAdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure Projection (α : Type) where
  toFun : α → α
  idempotent : ∀ x, toFun (toFun x) = toFun x

structure FreeMotionEndgameState where
  object : FreeMotionAdmittedObject

def freeMotionProjection : Projection FreeMotionEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem free_motion_projection_idempotent (x : FreeMotionEndgameState) :
    freeMotionProjection.toFun (freeMotionProjection.toFun x) = freeMotionProjection.toFun x := by
  exact freeMotionProjection.idempotent x

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse