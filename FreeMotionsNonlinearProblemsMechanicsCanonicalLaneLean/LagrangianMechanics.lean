import FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean.FreeMotionAdmissibleClass

namespace HautevilleHouse
namespace FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean

structure LagrangianPackage (O : FreeMotionAdmittedObject) where
  actionFunctional : Prop
  variationalPrinciple : Prop
  minimalAction : O.lagrangian → O.eulerLagrangeEquations
  boundaryTerms : Prop

structure LagrangianEvidence (L : LagrangianPackage O) where
  actionFunctionalClosed : L.actionFunctional
  variationalPrincipleClosed : L.variationalPrinciple
  boundaryTermsClosed : L.boundaryTerms

def LagrangianClosed (L : LagrangianPackage O) : Prop :=
  L.actionFunctional ∧ L.variationalPrinciple ∧ L.boundaryTerms

theorem lagrangian_closed_from_evidence (L : LagrangianPackage O) (E : LagrangianEvidence L) :
    LagrangianClosed L := by
  exact And.intro E.actionFunctionalClosed (And.intro E.variationalPrincipleClosed E.boundaryTermsClosed)

theorem lagrangian_yields_euler_lagrange (L : LagrangianPackage O) (h : L.minimalAction L.lagrangian) : O.eulerLagrangeEquations := h

end FreeMotionsNonlinearProblemsMechanicsCanonicalLaneLean
end HautevilleHouse