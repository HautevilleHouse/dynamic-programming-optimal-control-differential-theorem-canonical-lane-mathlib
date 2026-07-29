import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.StateSpace

/-!
# Control System Package
-/

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure ControlPackage (S : StateSpacePackage) where
  controlSpace : Type u
  controlSet : S.state -> Set controlSpace
  dynamics : S.state -> controlSpace -> S.state
  runningCost : S.state -> controlSpace -> ℝ
  admissibleControl : S.state -> controlSpace -> Prop

structure ControlEvidence {S : StateSpacePackage} (C : ControlPackage S) where
  controlSetNonempty : ∀ x : S.state, Set.Nonempty (C.controlSet x)
  dynamicsLipschitz : Prop
  runningCostContinuous : Prop
  admissibleControlDecidable : Prop

def ControlClosed {S : StateSpacePackage} (C : ControlPackage S) : Prop :=
  (∀ x : S.state, Set.Nonempty (C.controlSet x)) ∧ C.dynamicsLipschitz ∧ C.runningCostContinuous ∧ C.admissibleControlDecidable

theorem control_closed_from_evidence {S : StateSpacePackage} (C : ControlPackage S) (E : ControlEvidence C) : ControlClosed C := by
  exact And.intro E.controlSetNonempty (And.intro E.dynamicsLipschitz (And.intro E.runningCostContinuous E.admissibleControlDecidable))

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse