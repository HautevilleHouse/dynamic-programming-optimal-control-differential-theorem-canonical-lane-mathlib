import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure LinearQuadraticRegulator where
  stateDimension : ℕ
  controlDimension : ℕ
  stateMatrix : Matrix (Fin stateDimension) (Fin stateDimension) ℝ
  controlMatrix : Matrix (Fin stateDimension) (Fin controlDimension) ℝ
  costStateMatrix : Matrix (Fin stateDimension) (Fin stateDimension) ℝ
  costControlMatrix : Matrix (Fin controlDimension) (Fin controlDimension) ℝ
  optimalControlLaw : Prop
  valueFunctionClosedForm : Prop

structure LinearQuadraticRegulatorEvidence (L : LinearQuadraticRegulator) where
  optimalControlLawClosed : L.optimalControlLaw
  valueFunctionClosedFormClosed : L.valueFunctionClosedForm

def LinearQuadraticRegulatorClosed (L : LinearQuadraticRegulator) : Prop :=
  L.optimalControlLaw ∧ L.valueFunctionClosedForm

theorem lqr_closed_from_evidence (L : LinearQuadraticRegulator) (E : LinearQuadraticRegulatorEvidence L) :
    LinearQuadraticRegulatorClosed L := by
  exact And.intro E.optimalControlLawClosed E.valueFunctionClosedFormClosed

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse