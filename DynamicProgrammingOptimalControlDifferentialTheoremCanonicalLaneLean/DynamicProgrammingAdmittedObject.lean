import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

structure DynamicProgrammingAdmittedObject where
  stateSpace : Type u
  controlSpace : Type v
  timeHorizon : Type w
  costFunctional : Prop
  optimalControlExists : Prop
  dynamicProgrammingPrinciple : Prop
  optimalityConditions : Prop
  conclusion : optimalControlExists ∧ dynamicProgrammingPrinciple ∧ optimalityConditions

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse