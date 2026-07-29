import DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def dynamicProgrammingProjection : Projection DynamicProgrammingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dynamic_programming_projection_idempotent (x : DynamicProgrammingEndgameState) :
    dynamicProgrammingProjection.toFun (dynamicProgrammingProjection.toFun x) = dynamicProgrammingProjection.toFun x := by
  exact dynamicProgrammingProjection.idempotent x

end DynamicProgrammingOptimalControlDifferentialTheoremCanonicalLaneLean
end HautevilleHouse