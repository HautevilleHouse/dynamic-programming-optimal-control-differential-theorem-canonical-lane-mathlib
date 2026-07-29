import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure InfiniteHorizonOptimalControlPackage where
  discountFactor : Prop
  ergodicity : Prop
  steadyStateExistence : Prop
  turnpikeProperty : Prop

structure InfiniteHorizonOptimalControlEvidence (IH : InfiniteHorizonOptimalControlPackage) where
  discountFactorClosed : IH.discountFactor
  ergodicityClosed : IH.ergodicity
  steadyStateExistenceClosed : IH.steadyStateExistence
  turnpikePropertyClosed : IH.turnpikeProperty

def InfiniteHorizonOptimalControlClosed (IH : InfiniteHorizonOptimalControlPackage) : Prop :=
  IH.discountFactor ∧ IH.ergodicity ∧
  IH.steadyStateExistence ∧ IH.turnpikeProperty

theorem ih_optimal_control_closed_from_evidence (IH : InfiniteHorizonOptimalControlPackage)
    (E : InfiniteHorizonOptimalControlEvidence IH) : InfiniteHorizonOptimalControlClosed IH := by
  exact And.intro E.discountFactorClosed
    (And.intro E.ergodicityClosed
      (And.intro E.steadyStateExistenceClosed E.turnpikePropertyClosed))

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse