import Mathlib.Topology.Basic

/-!
# State Space Package
-/

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure StateSpacePackage where
  state : Type u
  topology : TopologicalSpace state
  smooth : Prop
  bounded : Prop

structure StateSpaceEvidence (S : StateSpacePackage) where
  smoothClosed : S.smooth
  boundedClosed : S.bounded

def StateSpaceClosed (S : StateSpacePackage) : Prop :=
  S.smooth ∧ S.bounded

theorem state_space_closed_from_evidence (S : StateSpacePackage) (E : StateSpaceEvidence S) : StateSpaceClosed S := by
  exact And.intro E.smoothClosed E.boundedClosed

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse