import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.ControlSystem

/-!
# Optimal Control Problem Package
-/

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure OptimalControlProblemPackage {S : StateSpacePackage} {C : ControlPackage S} (O : Type) [OptimalControlProblem O S C] where
  valueFunction : Type u
  objectiveFunctional : Prop
  admissibleSet : Prop
  optimalControlExists : Prop
  bellmanOptimalityPrinciple : Prop

class OptimalControlProblem (O : Type) (S : StateSpacePackage) (C : ControlPackage S) where
  valueFunction : Type u
  objectiveFunctional : Prop
  admissibleSet : Prop
  optimalControlExists : Prop
  bellmanOptimalityPrinciple : Prop

structure OptimalControlProblemEvidence {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} where
  valueFunctionDefined : O.valueFunction = O.valueFunction
  objectiveFunctionalClosed : O.objectiveFunctional
  admissibleSetClosed : O.admissibleSet
  optimalControlExistsClosed : O.optimalControlExists
  bellmanOptimalityPrincipleClosed : O.bellmanOptimalityPrinciple

def OptimalControlProblemClosed {S : StateSpacePackage} {C : ControlPackage S} (O : OptimalControlProblemPackage S C) : Prop :=
  O.objectiveFunctional ∧ O.admissibleSet ∧ O.optimalControlExists ∧ O.bellmanOptimalityPrinciple

theorem optimal_control_problem_closed_from_evidence {S : StateSpacePackage} {C : ControlPackage S} {O : OptimalControlProblemPackage S C} (E : OptimalControlProblemEvidence O) : OptimalControlProblemClosed O := by
  exact And.intro E.objectiveFunctionalClosed (And.intro E.admissibleSetClosed (And.intro E.optimalControlExistsClosed E.bellmanOptimalityPrincipleClosed))

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse