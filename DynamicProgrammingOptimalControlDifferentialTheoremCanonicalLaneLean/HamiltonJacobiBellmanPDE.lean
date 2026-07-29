import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.BellmanEquation

/-!
# Hamilton-Jacobi-Bellman PDE Package
-/

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure PdePackage {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} where
  pdeOperator : Type u
  boundaryCondition : Prop
  comparisonPrinciple : Prop
  uniqueness : Prop

structure PdeEvidence {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} (P : PdePackage B) where
  pdeOperatorClosed : True
  boundaryConditionClosed : P.boundaryCondition
  comparisonPrincipleClosed : P.comparisonPrinciple
  uniquenessClosed : P.uniqueness

def PdeClosed {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} (P : PdePackage B) : Prop :=
  P.boundaryCondition ∧ P.comparisonPrinciple ∧ P.uniqueness

theorem pde_closed_from_evidence {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} {B : BellmanEquationPackage O} (P : PdePackage B) (E : PdeEvidence P) : PdeClosed P := by
  exact And.intro E.boundaryConditionClosed (And.intro E.comparisonPrincipleClosed E.uniquenessClosed)

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse