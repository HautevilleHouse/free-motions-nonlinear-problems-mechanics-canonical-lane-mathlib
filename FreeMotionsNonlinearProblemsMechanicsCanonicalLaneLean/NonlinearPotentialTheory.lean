import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.LagrangianMechanics

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure NonlinearPotentialPackage (O : FreeMotionAdmittedObject) where
  potentialType : Type u
  nonlinearityStrength : Prop
  wellPosedness : Prop
  energyBoundedBelow : Prop
  existenceMinimizer : O.potentialEnergy → O.eulerLagrangeEquations

structure NonlinearPotentialEvidence (N : NonlinearPotentialPackage O) where
  nonlinearityStrengthClosed : N.nonlinearityStrength
  wellPosednessClosed : N.wellPosedness
  energyBoundedBelowClosed : N.energyBoundedBelow

def NonlinearPotentialClosed (N : NonlinearPotentialPackage O) : Prop :=
  N.nonlinearityStrength ∧ N.wellPosedness ∧ N.energyBoundedBelow

theorem nonlinear_potential_closed_from_evidence (N : NonlinearPotentialPackage O) (E : NonlinearPotentialEvidence N) :
    NonlinearPotentialClosed N := by
  exact And.intro E.nonlinearityStrengthClosed (And.intro E.wellPosednessClosed E.energyBoundedBelowClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse