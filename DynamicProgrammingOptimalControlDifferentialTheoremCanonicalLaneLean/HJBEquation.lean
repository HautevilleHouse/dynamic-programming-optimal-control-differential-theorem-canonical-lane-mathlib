import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure HJBEquationPackage (X : Type u) (U : Type v) where
  stateSpace : X
  controlSpace : U
  valueFunction : X → ℝ
  hamiltonian : X → X → ℝ → ℝ
  hjbEquation : Prop
  viscositySolution : Prop
  hjbEquationDefined : Prop
  viscositySolutionDefined : Prop
  hjbEquationTerm : hjbEquationDefined
  viscositySolutionTerm : viscositySolutionDefined

structure HJBEquationEvidence {X : Type u} {U : Type v} (H : HJBEquationPackage X U) where
  hjbEquationClosed : H.hjbEquationDefined
  viscositySolutionClosed : H.viscositySolutionDefined

def HJBEquationClosed {X : Type u} {U : Type v} (H : HJBEquationPackage X U) : Prop :=
  H.hjbEquationDefined ∧ H.viscositySolutionDefined

theorem hjb_equation_closed_from_evidence
    {X : Type u} {U : Type v} (H : HJBEquationPackage X U)
    (E : HJBEquationEvidence H) : HJBEquationClosed H := by
  exact And.intro E.hjbEquationClosed E.viscositySolutionClosed

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse