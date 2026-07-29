import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.NonlinearPotentialTheory

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure PerturbationStabilityPackage (O : FreeMotionAdmittedObject) where
  perturbationFamily : Type u
  continuityWithRespectToParameter : Prop
  stabilityOfMinimizers : Prop
  bifurcationAnalysis : Prop

structure PerturbationStabilityEvidence (P : PerturbationStabilityPackage O) where
  continuityClosed : P.continuityWithRespectToParameter
  stabilityClosed : P.stabilityOfMinimizers
  bifurcationClosed : P.bifurcationAnalysis

def PerturbationStabilityClosed (P : PerturbationStabilityPackage O) : Prop :=
  P.continuityWithRespectToParameter ∧ P.stabilityOfMinimizers ∧ P.bifurcationAnalysis

theorem perturbation_stability_closed_from_evidence (P : PerturbationStabilityPackage O) (E : PerturbationStabilityEvidence P) :
    PerturbationStabilityClosed P := by
  exact And.intro E.continuityClosed (And.intro E.stabilityClosed E.bifurcationClosed)

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse