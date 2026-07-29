import FormationClosure

namespace HautevilleHouse
namespace FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FormationEndgameState where
  object : FormationAdmittedObject

def formationProjection : Projection FormationEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl }

theorem formation_projection_idempotent (x : FormationEndgameState) :
    formationProjection.toFun (formationProjection.toFun x) = formationProjection.toFun x :=
  by exact formationProjection.idempotent x

end FiniteSolvableGroupsTheoryFormationsCanonicalLaneLean
end HautevilleHouse
