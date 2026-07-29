import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure HamiltonianPackage (X : Type u) (U : Type v) where
  stateSpace : X
  controlSpace : U
  runningCost : X → U → ℝ
  terminalCost : X → ℝ
  dynamics : X → U → X
  hamiltonian : X → X → ℝ → ℝ
  hamiltonianDefined : Prop
  hamiltonianDefinedTerm : hamiltonianDefined

structure HamiltonianEvidence {X : Type u} {U : Type v} (H : HamiltonianPackage X U) where
  hamiltonianDefinedClosed : H.hamiltonianDefined

def HamiltonianClosed {X : Type u} {U : Type v} (H : HamiltonianPackage X U) : Prop :=
  H.hamiltonianDefined

theorem hamiltonian_closed_from_evidence
    {X : Type u} {U : Type v} (H : HamiltonianPackage X U)
    (E : HamiltonianEvidence H) : HamiltonianClosed H := by
  exact E.hamiltonianDefinedClosed

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse