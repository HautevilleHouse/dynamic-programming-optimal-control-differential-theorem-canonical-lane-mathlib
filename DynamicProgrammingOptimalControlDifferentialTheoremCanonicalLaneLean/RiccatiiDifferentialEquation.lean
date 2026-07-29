import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure RiccatiDifferentialEquation where
  matrixDimension : ℕ
  coefficientMatrix : Matrix (Fin matrixDimension) (Fin matrixDimension) ℝ
  solutionMatrix : Matrix (Fin matrixDimension) (Fin matrixDimension) ℝ
  differentialEquationSatisfied : Prop
  boundaryCondition : Prop

structure RiccatiDifferentialEquationEvidence (R : RiccatiDifferentialEquation) where
  differentialEquationSatisfiedClosed : R.differentialEquationSatisfied
  boundaryConditionClosed : R.boundaryCondition

def RiccatiDifferentialEquationClosed (R : RiccatiDifferentialEquation) : Prop :=
  R.differentialEquationSatisfied ∧ R.boundaryCondition

theorem riccati_closed_from_evidence (R : RiccatiDifferentialEquation) (E : RiccatiDifferentialEquationEvidence R) :
    RiccatiDifferentialEquationClosed R := by
  exact And.intro E.differentialEquationSatisfiedClosed E.boundaryConditionClosed

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse