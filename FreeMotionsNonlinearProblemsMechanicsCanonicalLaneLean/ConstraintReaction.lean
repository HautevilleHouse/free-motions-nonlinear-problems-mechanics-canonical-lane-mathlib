import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.PerturbationStability

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure ConstraintReactionPackage (O : FreeMotionAdmittedObject) where
  constraintSet : Prop
  reactionForces : Prop
  dAlembertPrinciple : Prop
  constrainedEulerLagrange : O.eulerLagrangeEquations → Prop

structure ConstraintReactionEvidence (C : ConstraintReactionPackage O) where
  constraintSetClosed : C.constraintSet
  reactionForcesClosed : C.reactionForces
  dAlembertPrincipleClosed : C.dAlembertPrinciple

def ConstraintReactionClosed (C : ConstraintReactionPackage O) : Prop :=
  C.constraintSet ∧ C.reactionForces ∧ C.dAlembertPrinciple

theorem constraint_reaction_closed_from_evidence (C : ConstraintReactionPackage O) (E : ConstraintReactionEvidence C) :
    ConstraintReactionClosed C := by
  exact And.intro E.constraintSetClosed (And.intro E.reactionForcesClosed E.dAlembertPrincipleClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse