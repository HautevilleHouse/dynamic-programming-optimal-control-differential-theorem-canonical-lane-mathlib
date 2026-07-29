import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure DynamicProgrammingPrinciplePackage (X : Type u) (U : Type v) where
  stateSpace : X
  controlSpace : U
  valueFunction : X → ℝ
  optimalityEquation : Prop
  bellmanPrinciple : Prop
  optimalityEquationDefined : Prop
  bellmanPrincipleDefined : Prop
  optimalityEquationTerm : optimalityEquationDefined
  bellmanPrincipleTerm : bellmanPrincipleDefined

structure DynamicProgrammingPrincipleEvidence {X : Type u} {U : Type v}
    (D : DynamicProgrammingPrinciplePackage X U) where
  optimalityEquationClosed : D.optimalityEquationDefined
  bellmanPrincipleClosed : D.bellmanPrincipleDefined

def DynamicProgrammingPrincipleClosed {X : Type u} {U : Type v}
    (D : DynamicProgrammingPrinciplePackage X U) : Prop :=
  D.optimalityEquationDefined ∧ D.bellmanPrincipleDefined

theorem dynamic_programming_principle_closed_from_evidence
    {X : Type u} {U : Type v} (D : DynamicProgrammingPrinciplePackage X U)
    (E : DynamicProgrammingPrincipleEvidence D) : DynamicProgrammingPrincipleClosed D := by
  exact And.intro E.optimalityEquationClosed E.bellmanPrincipleClosed

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse